
// Copyright (c) 2026 comkable
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#include "define.hpp"

#include <vector>
#include <iostream>
#include <fstream>

using chars = std::vector<char>;
using Tokens = std::vector<std::string>;

class Error {
protected:
    std::string name;
    std::string msg;
public:
    auto throws(SizeType line) const -> std::string {
        std::string temp = this->what(line);
        std::cerr << temp << std::endl;
        return temp;
    }

    auto throws() const -> std::string {
        std::string temp = this->what();
        std::cerr << temp << std::endl;
        return temp;
    }

    auto what(SizeType line) const -> std::string {
        std::string temp = std::string("Throwed ") + "in line " + std::to_string(line) + "\n" + 
            "ERROR " + this->name + " : \033[31m" + this->msg + "\033[0m";
        return temp;
    }

    auto what() const -> std::string {
        std::string temp = "Throwed" + std::string("\n") + 
            "ERROR " + this->name + " : \033[31m" + this->msg + "\033[0m";
        return temp;
    }
};

class FileError : public Error {
public:
    FileError(std::string msg) {
        this->name = "FileError";
        this->msg = msg;
        throws();
    }
};

static inline auto readAll(const std::string& filename) -> std::string {
    std::ifstream ifs(filename);
    if (!ifs) {
        std::cerr << "Failed to open file: " << filename << std::endl;
        exit(EXIT_FAILURE);
    }
    return std::string(std::istreambuf_iterator<char>(ifs),
                       std::istreambuf_iterator<char>());
}

static inline auto saveAll(const std::string& filepath, const chars& content) -> void {
    std::ofstream ofs(filepath, std::ios::binary);
    if (!ofs)
        throw FileError("Failed to open file: " + filepath);
    ofs.write(content.data(), content.size());
}

static inline auto split(const std::string& s, char sep) -> Tokens {
    Tokens res;
    std::string tmp;
    for (char c : s) {
        if (c == sep)
            if (!tmp.empty()) {
                res.push_back(tmp);
                tmp.clear();
            }
        else
            tmp += c;
    }
    if (!tmp.empty())
        res.push_back(tmp);
    return res;
}

static inline auto lexer(const std::string& str) -> std::vector<Tokens> {
    std::vector<Tokens> res;

    Tokens lines = split(str, '\n');

    for (const std::string& line : lines)
        res.emplace_back(split(line, ' '));

    return res;
}

static inline auto usage(const std::string& str) -> void {
    std::cout << str + " <input> <output>" << std::endl;
    exit(EXIT_FAILURE);
}

static inline auto compiler(const std::string& str) -> chars {
    std::vector<Tokens> manyTokens = lexer(str);
    chars res;
    chars buffer;

    for (Tokens& tokens : manyTokens) {
        std::string& command = tokens[0];
        tokens.erase(tokens.begin());

        if (command == "mov") {
            buffer.push_back(0);
            buffer.push_back(1);

            ui8 reg = std::stoll(tokens[0]); // TODO: toUi64
            ui64 data = std::stoll(tokens[1]);
            ui8 type = reg / 4;

            switch (type) {
            case 0:
                buffer.push_back(static_cast<char>(reg));
                buffer.push_back(); // TODO
            }
        }
        res.push_back(static_cast<char>(buffer.size()));
        for (char c : buffer)
            res.push_back(c);
        buffer.clear();
    }
}

auto main(int argc, char** _argv) -> int {
    Tokens argv;
    for (size_t index = 0; index < argc; ++index)
        argv.push_back(std::string(_argv[index]));

    if (argv.size() < 2)
        usage(argv[0]);

    std::string inputFile;
    std::string outputFile = "a.out";

    for (size_t index = 1; index < argv.size(); ++index) {
        auto& str = argv[index];
        if (str == "-o") {
            if (index + 1 >= argv.size()) {
                std::cerr << "Expected output file after -o\n";
                usage(argv[0]);
            }
            outputFile = argv[++index];
        }
        else
            inputFile = str;
    }

    if (inputFile.empty())
        usage(argv[0]);

    std::string str = readAll(inputFile);
    chars string = compiler(str);
    saveAll(outputFile, string);

    return 0;
}
