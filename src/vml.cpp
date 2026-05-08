
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

#include <cstdlib>
#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using chars = std::vector<char>;
using charsIter = chars::iterator;

static inline auto readAll(const std::string& filename) -> chars {
    std::ifstream ifs(filename, std::ios::binary);
    if (!ifs) {
        std::cerr << "Failed to open file: " << filename << std::endl;
        exit(EXIT_FAILURE);
    }
    chars cs = chars(std::istreambuf_iterator<char>(ifs),
                     std::istreambuf_iterator<char>());

    chars cleaned;
    for (size_t i = 0; i < cs.size(); ++i) {
        if (cs[i] == '\r' && i + 1 < cs.size() && cs[i+1] == '\n') {
            cleaned.push_back('\n');
            ++i;
        } else
            cleaned.push_back(cs[i]);
    }
    return cs;
}

static inline auto usage(const std::string& str) -> void {
    std::cout << str + " <path>" << std::endl;
    exit(EXIT_FAILURE);
}

static inline auto execute(chars& cs) -> void {
    std::vector<chars> lines; // different lines
    // lines.resize(cs.size() / 10 + 10);
    chars temp;
    charsIter begin, end;
    begin = cs.begin();
    end = cs.end();

    struct Functions {
        static auto printLines(const std::vector<chars>& lines) -> void {
            SizeType lineNum = 0;
            std::string str;
            for (chars cs : lines) {
                lineNum++;
                std::cout << "line " + std::to_string(lineNum) + " : ";
                for (char c : cs) {
                    str = std::to_string(static_cast<ui8>(c));
                    std::cout << str;
                    for (ui8 i = 0; i < 4 - str.size(); i++)
                        std::cout << " ";
                }
                std::cout << "\n";
            }
            std::cout << std::flush;
        }
    };

    for (; begin != end; ) {
        ui8 num = static_cast<ui8>(*begin);
        begin++;

        for (; num > 0 && begin != end; num--) {
            temp.push_back(*begin);
            begin++;
        }

        lines.push_back(temp);
        temp.clear();
    }

    Functions::printLines(lines); // TODO
}

auto main(int argc, char** _argv) -> int {
    std::vector<std::string> argv;
    for (size_t index = 0; index < argc; ++index)
        argv.push_back(std::string(_argv[index]));

    if (argv.size() < 2)
        usage(argv[0]);

    std::string inputFile;

    for (size_t index = 1; index < argv.size(); ++index) {
        auto& str = argv[index];
        inputFile = str;
    }

    if (inputFile.empty())
        usage(argv[0]);

    chars cs = readAll(inputFile);
    execute(cs);

    return 0;
}

