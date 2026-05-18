
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
#include "functions.hpp"

#include <iomanip>
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
    for (SizeType i = 0; i < cs.size(); ++i) {
        if (cs[i] == '\r' && i + 1 < cs.size() && cs[i+1] == '\n') {
            cleaned.push_back('\n');
            ++i;
        } else
            cleaned.push_back(cs[i]);
    }
    return cleaned;
}

static inline auto usage(const std::string& str) -> void {
    std::cout << str + " <path>" << std::endl;
    exit(EXIT_FAILURE);
}

void printHex(const chars& data) {
    std::cout << std::hex << std::setfill('0') << std::uppercase;

    SizeType len = data.size();

    for (char c : data)
        std::cout << std::setw(2) << static_cast<int>(c);

    std::cout << std::dec << std::nouppercase << std::endl;
}

static inline void executeLine(chars& cs, SizeType& i) {
    ui8* dataPtr = reinterpret_cast<ui8*>(cs.data());
    if (dataPtr == NULL) {
        printf("The %dth command is NULL.", i + 1);
        exit(EXIT_FAILURE);
    }
    ui16 command = readI16(dataPtr);

    ui8* argsPtr = reinterpret_cast<ui8*>(dataPtr) + sizeof(command);

    auto& func = functions[command];

    if (!func) {
        printf("Error: cannot run %u\n", command);
        exit(EXIT_FAILURE);
    }

    func(argsPtr, i);

#ifdef DEBUG
    _sleep(100);
    printReg();
    std::cout << "curr: " << i << std::endl;
#endif
}

// std::pair<ui8, chars> -> command is faster

static inline void execute(chars& cs) {
    std::vector<chars> lines;
    chars temp;
    auto begin = cs.begin();
    auto end = cs.end();

    struct Functions {
        static auto printLines(const std::vector<chars>& lines) -> void {
            SizeType lineNum = 0;
            for (const auto& line : lines) {
                lineNum++;
                std::cout << "line " << lineNum << " : ";
                for (char c : line) {
                    std::string str = std::to_string(static_cast<ui8>(c));
                    std::cout << str;
                    for (ui8 i = 0; i < 4 - str.size(); i++)
                        std::cout << " ";
                }
                std::cout << "\n";
            }
            std::cout << std::flush;
        }
    };

    while (begin != end) {
        ui8 num = static_cast<ui8>(*begin);
        ++begin;

        for (; num > 0 && begin != end; --num) {
            temp.push_back(*begin);
            ++begin;
        }

        lines.push_back(std::move(temp));
    }

#ifdef DEBUG
    Functions::printLines(lines);
#endif

    for (SizeType i = 0; i < lines.size(); )
        executeLine(lines[i], i);
}

int main(int argc, char** _argv) {
    std::vector<std::string> argv(_argv, _argv + argc);

    if (argv.size() < 2)
        usage(argv[0]);

    loadFunctions();
    std::string inputFile = argv[1];
    chars cs = readAll(inputFile);
    execute(cs);

// #ifdef DEBUG
//     printf("reg0 = %d\n", static_cast<int>(regByte1Number1)); // print the first
// #endif

    return 0;
}
