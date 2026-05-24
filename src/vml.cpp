
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

using charsIter = chars::iterator;

static inline auto readAll(const std::string& filename) noexcept -> chars {
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

static inline auto usage(const std::string& str) noexcept -> void {
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

static inline auto executeLine(chars& cs, SizeType& i) noexcept -> void {
    ui8* dataPtr = cs.data();
    ui16 command = readI16(dataPtr);
    ui8* argsPtr = dataPtr + sizeof(command);

    functions[command](argsPtr, i);

#ifdef DEBUG
    _sleep(100);
    printReg();
    std::cout << "curr: " << i << std::endl;
#endif
}

// std::pair<ui8, chars> -> command is faster

static inline void execute(chars& cs) noexcept {
    std::vector<chars> lines;
    chars temp;

    ui8* begin = cs.begin().base();
    ui8* end = cs.end().base();

    while (begin != end) {
        ui8 num = *begin;
        ++begin;

        for (; num > 0 && begin != end; --num) {
            temp.push_back(*begin);
            ++begin;
        }

        lines.push_back(std::move(temp));
    }

    for (SizeType i = 0; i < lines.size(); )
        executeLine(lines[i], i);
}

int main(int argc, char** _argv) {
    std::vector<std::string> argv(_argv, _argv + argc);

    if (argv.size() < 2)
        usage(argv[0]);

    start();
    std::string inputFile = argv[1];
    chars cs = readAll(inputFile);
    execute(cs);

// #ifdef DEBUG
//     printf("reg0 = %d\n", static_cast<int>(regByte1Number1)); // print the first
// #endif

    return 0;
}
