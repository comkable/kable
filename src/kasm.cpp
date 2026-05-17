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
// AUTHORS OR COPYRIGHT HOLDERS IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#include "define.hpp"

#include <cctype>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <cstdlib>
#include <sstream>
#include <algorithm>
#include <stdexcept>
#include <iterator>

constexpr ui8 BIT8TYPE = 0;
constexpr ui8 BIT16TYPE = 1;
constexpr ui8 BIT32TYPE = 2;
constexpr ui8 BIT64TYPE = 3;

using Tokens = std::vector<std::string>;
using chars = std::vector<char>;

class CompilerError : public std::runtime_error {
public:
    explicit CompilerError(const std::string& msg) 
        : std::runtime_error("\033[31m" + msg + "\033[0m") {}
};

class FileError : public CompilerError {
public:
    explicit FileError(const std::string& msg) 
        : CompilerError("FileError: " + msg) {}
};

static inline chars readAll(const std::string& filename) {
    std::ifstream ifs(filename, std::ios::binary);
    if (!ifs) {
        throw FileError("Failed to open file: " + filename);
    }

    chars cs{std::istreambuf_iterator<char>(ifs), 
             std::istreambuf_iterator<char>()};
    chars cleaned;

    for (SizeType i = 0; i < cs.size(); ++i) {
        if (cs[i] == '\r' && i + 1 < cs.size() && cs[i+1] == '\n') {
            cleaned.push_back('\n');
            ++i;
        } else
            cleaned.push_back(cs[i]);
    }
    return cleaned;
}

static inline void saveAll(const std::string& filepath, const chars& content) {
    std::ofstream ofs(filepath, std::ios::binary);
    if (!ofs) {
        throw FileError("Failed to open file: " + filepath);
    }
    ofs.write(content.data(), static_cast<std::streamsize>(content.size()));
}

static inline bool isEmpty(const std::string& s) {
    if (s.empty()) return true;
    for (char c : s) {
        if (!isblank(static_cast<unsigned char>(c))) {
            return false;
        }
    }
    return true;
}

static inline bool isEmpty(const chars& s) {
    if (s.empty()) return true;
    for (char c : s) {
        if (!isblank(static_cast<unsigned char>(c))) {
            return false;
        }
    }
    return true;
}

static inline bool isEmpty(const Tokens& s) {
    for (const std::string& part : s) {
        if (!isEmpty(part)) return false;
    }
    return true;
}

static inline Tokens split(const std::string& s, char sep) {
    Tokens res;
    std::string tmp;

    for (char c : s) {
        if (c == sep) {
            if (!isEmpty(tmp)) {
                res.push_back(tmp);
                tmp.clear();
            }
        } else
            tmp += c;
    }
    if (!isEmpty(tmp))
        res.push_back(tmp);
    return res;
}

static inline std::vector<Tokens> lexer(const std::string& str) {
    std::vector<Tokens> res;
    Tokens lines = split(str, '\n');
    auto b = lines.begin();
    auto e = lines.end();

    for (; b != e; b++) {
        std::string& line = *b;

        auto b_ = line.begin();
        auto e_ = line.end();

        for (; b_ != e_; b_++)
            if (*b_ == ';') {
                line.erase(b_, e_);
                break;
            }

        Tokens tokens = split(line, ' ');

        if (!isEmpty(tokens))
            res.push_back(tokens);
    }
    return res;
}

static inline void usage(const std::string& str) {
    std::cout << "Usage: " << str << " <input> [-o output]" << std::endl;
    std::exit(EXIT_FAILURE);
}

static inline void write(chars& buffer, ui64 data, ui8 type) {
    switch (type) {
        case 0x0:
            buffer.push_back(static_cast<char>(data & 0xFF));
            break;
        case 0x1:
            buffer.push_back(static_cast<char>(data & 0xFF));
            buffer.push_back(static_cast<char>((data >> 8) & 0xFF));
            break;
        case 0x2:
            buffer.push_back(static_cast<char>(data & 0xFF));
            buffer.push_back(static_cast<char>((data >> 8) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 16) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 24) & 0xFF));
            break;
        case 0x3:
            buffer.push_back(static_cast<char>(data & 0xFF));
            buffer.push_back(static_cast<char>((data >> 8) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 16) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 24) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 32) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 40) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 48) & 0xFF));
            buffer.push_back(static_cast<char>((data >> 56) & 0xFF));
            break;
        default:
            throw CompilerError("Invalid register type: " + std::to_string(type));
    }
}

static inline void writeReg(chars& buffer, ui8 reg, ui64 data) {
    buffer.push_back(static_cast<char>(reg));
    write(buffer, data, reg / 4);
}

static inline chars compiler(const std::string& content) {
    std::vector<Tokens> instructions = lexer(content);
    chars binary;

    for (const auto& tokens : instructions) {
        const std::string& cmd = tokens[0];
        chars buffer;

#define MakeCmd(name, code) \
else if (cmd == name) { \
    if (tokens.size() < 4) \
        throw CompilerError(name " syntax: " name " <reg> <reg> <reg>"); \
    buffer.push_back(0x00); \
    buffer.push_back(code); \
    ui8 r1 = static_cast<ui8>(std::stoull(tokens[1])); \
    ui8 r2 = static_cast<ui8>(std::stoull(tokens[2])); \
    ui8 r3 = static_cast<ui8>(std::stoull(tokens[3])); \
    buffer.push_back(static_cast<char>(r1)); \
    buffer.push_back(static_cast<char>(r2)); \
    buffer.push_back(static_cast<char>(r3)); \
}

#define VoidCmd(name)                               \
else if (cmd == name) {                             \
    number++;                                       \
    throw CompilerError("Cannot run this command"); \
}

#define CreateCmd(name)         \
MakeCmd(name "ui8", number++)   \
MakeCmd(name "ui16", number++)  \
MakeCmd(name "ui32", number++)  \
MakeCmd(name "ui64", number++)  \
MakeCmd(name "flt32", number++) \
MakeCmd(name "flt64", number++)

#define CreateBitsCmd(name)     \
MakeCmd(name "ui8", number++)   \
MakeCmd(name "ui16", number++)  \
MakeCmd(name "ui32", number++)  \
MakeCmd(name "ui64", number++)  \
VoidCmd(name "flt32")           \
VoidCmd(name "flt64")

        SizeType number = 0;

        if (cmd == "mov") {
            if (tokens.size() < 3)
                throw CompilerError("mov syntax: mov <reg> <data>");
            buffer.push_back(0x00);
            buffer.push_back(0x01);

            ui8 reg = static_cast<ui8>(std::stoull(tokens[1]));
            ui64 data = std::stoull(tokens[2]);
            writeReg(buffer, reg, data);
        }

        CreateCmd("add")
        // 5
        CreateCmd("sub")
        // 11
        CreateCmd("mul")
        // 17
        CreateCmd("div")
        // 23
        CreateCmd("big")
        // 29
        CreateCmd("small")
        // 35
        CreateCmd("equal")
        // 41
        CreateBitsCmd("and")
        // 47
        CreateBitsCmd("or")
        // 53
        CreateBitsCmd("not")
        // 59
        CreateBitsCmd("xor")
        // 65
        CreateBitsCmd("logicaland")
        // 71
        CreateBitsCmd("logicor")
        // 77
        CreateBitsCmd("logicnot")

        else if (cmd == "putchar") {
            if (tokens.size() < 2)
                throw CompilerError("putchar syntax: putchar <reg>");
            buffer.push_back(0x01);
            buffer.push_back(0x01);

            ui8 reg = static_cast<ui8>(std::stoull(tokens[1]));
            buffer.push_back(static_cast<char>(reg));
        }

        else if (cmd == "goto") {
            if (tokens.size() < 2)
                throw CompilerError("putchar syntax: putchar <reg>");
            buffer.push_back(0x02);
            buffer.push_back(0x01);

            ui64 location = static_cast<ui64>(std::stoull(tokens[1]));

            write(buffer, location, BIT32TYPE);
        }

        else
            throw CompilerError("Unknown command: " + cmd);

        binary.push_back(static_cast<char>(buffer.size()));
        binary.insert(binary.end(), buffer.begin(), buffer.end());
    }

    return binary;
}

int main(int argc, char** argv) {
    try {
        if (argc < 2)
            usage(argv[0]);

        std::string inputFile;
        std::string outputFile = "a.out";

        for (int i = 1; i < argc; ++i) {
            std::string arg = argv[i];
            if (arg == "-o") {
                if (i + 1 >= argc)
                    throw CompilerError("Missing output file after -o");
                outputFile = argv[++i];
            } else if (inputFile.empty())
                inputFile = arg;
        }

        if (inputFile.empty())
            usage(argv[0]);

        chars fileContent = readAll(inputFile);
        std::string source(fileContent.begin(), fileContent.end());
        chars binaryCode = compiler(source);
        saveAll(outputFile, binaryCode);

        std::cout << "Compile success! Output: " << outputFile << std::endl;
    } catch (const CompilerError& e) {
        std::cerr << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
