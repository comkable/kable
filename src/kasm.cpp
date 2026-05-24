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

#include <unordered_map>
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
 switch (type) { case 0x0: buffer.push_back(static_cast<char>(data & 0xFF)); break; case 0x1:
   buffer.push_back(static_cast<char>(data & 0xFF)); buffer.push_back(static_cast<char>((
    data >> 8) & 0xFF)); break; case 0x2: buffer.push_back(static_cast<char>(data& 0xFF
      ));buffer.push_back(static_cast<char>((data >> 8) & 0xFF)); buffer.push_back(
       static_cast<char>((data >> 16) & 0xFF)); buffer.push_back(static_cast<char>((
        data >> 24) & 0xFF)); break; case 0x3:  buffer.push_back(static_cast<char>(
         data & 0xFF)); buffer.push_back(static_cast<char>((data >> 8) &0xFF));0x4623;             // LOL
          buffer.push_back(static_cast<char>((data >> 16) & 0xFF)); buffer.push_back(
           static_cast<char>((data >> 24) & 0xFF)); buffer.push_back(static_cast
            <char>((data >> 32) & 0xFF)); buffer.push_back( static_cast<char>
             ((data>> 40) & 0xFF)); buffer.push_back(static_cast<char>((data
              >> 48) & 0xFF));buffer.push_back(static_cast<char>((data >> 
                56) & 0xFF)); break; default: throw CompilerError(
                 "Invalid register type: " + std::to_string(type));}}

static inline void writeReg(chars& buffer, ui8 reg, ui64 data) {
    buffer.push_back(static_cast<char>(reg));
    write(buffer, data, reg / 4);
}


static inline ui8 storeg(const std::string& str) {
    if (str.size() >= 2 && str.substr(0, 3) == "reg")
        return static_cast<ui8>(std::stoull(str.substr(3)));
    throw CompilerError(str + ": reg?");
}

static inline chars compiler(const std::string& content) {
    std::vector<Tokens> instructions_ = lexer(content);
    std::vector<Tokens> instructions;
    chars binary;
    std::unordered_map<std::string, ui32> map;
    ui32 i = 0;

    for (const auto& tokens : instructions_) {
        const std::string& cmd = tokens[0];
        
        if (cmd == "label")
            map[tokens[1]] = i;
        else
            instructions.emplace_back(tokens);
        
        i++;
    }

    for (const auto& tokens : instructions) {
        const std::string& cmd = tokens[0];
        chars buffer;

#define MakeCmd(name, code)                     \
if (cmd == name) {                              \
    if (tokens.size() < 5)                      \
        throw CompilerError(name " syntax: " name " <reg> <reg> <any-string> <reg>"); \
    buffer.push_back(code);                     \
    buffer.push_back(0x00);                     \
    ui8 r1 = storeg(tokens[1]);                 \
    ui8 r2 = storeg(tokens[2]);                 \
    ui8 r3 = storeg(tokens[4]);                 \
    buffer.push_back(static_cast<char>(r1));    \
    buffer.push_back(static_cast<char>(r2));    \
    buffer.push_back(static_cast<char>(r3));    \
    goto over;                                  \
}

#define MakeUnaryCmd(name, code)                     \
if (cmd == name) {                              \
    if (tokens.size() < 4)                      \
        throw CompilerError(name " syntax: " name " <reg> <any-string> <reg>"); \
    buffer.push_back(code);                     \
    buffer.push_back(0x00);                     \
    ui8 r1 = storeg(tokens[1]);                 \
    ui8 r2 = storeg(tokens[3]);                 \
    buffer.push_back(static_cast<char>(r1));    \
    buffer.push_back(static_cast<char>(r2));    \
    goto over;                                  \
}

#define MakeTT(type1, type2, code)              \
if (cmd == "tt" type1 type2) {                  \
    if (tokens.size() < 4)                      \
        throw CompilerError("tt" type1 type2 " syntax: " "tt" type1 type2 " <reg> <any-string> <reg>"); \
    buffer.push_back(code);                     \
    buffer.push_back(0x00);                     \
                                                \
    ui8 r1 = storeg(tokens[1]);                 \
    ui8 r2 = storeg(tokens[3]);                 \
    buffer.push_back(static_cast<char>(r1));    \
    buffer.push_back(static_cast<char>(r2));    \
                                                \
    goto over;                                  \
}

#define CreateTT(type, code)                    \
MakeTT(type, "ui8", code + 0)                   \
MakeTT(type, "ui16", code + 1)                  \
MakeTT(type, "ui32", code + 2)                  \
MakeTT(type, "ui64", code + 3)                  \
MakeTT(type, "flt32", code + 4)                 \
MakeTT(type, "flt64", code + 5)


#define VoidCmd(name)                                 \
if (cmd == name) {                                    \
    throw CompilerError("Cannot run this command");   \
}

#define CreateCmd(name, code)     \
MakeCmd(name "ui8", code + 0)     \
MakeCmd(name "ui16", code + 1)    \
MakeCmd(name "ui32", code + 2)    \
MakeCmd(name "ui64", code + 3)    \
MakeCmd(name "flt32", code + 4)   \
MakeCmd(name "flt64", code + 5)

#define CreateUnaryCmd(name, code)     \
MakeUnaryCmd(name "ui8", code + 0)     \
MakeUnaryCmd(name "ui16", code + 1)    \
MakeUnaryCmd(name "ui32", code + 2)    \
MakeUnaryCmd(name "ui64", code + 3)    \
MakeUnaryCmd(name "flt32", code + 4)   \
MakeUnaryCmd(name "flt64", code + 5)

#define CreateUnaryBitsCmd(name, code) \
MakeUnaryCmd(name "ui8", code + 0)     \
MakeUnaryCmd(name "ui16", code + 1)    \
MakeUnaryCmd(name "ui32", code + 2)    \
MakeUnaryCmd(name "ui64", code + 3)    \
VoidCmd(name "flt32")                  \
VoidCmd(name "flt64")

#define CreateBitsCmd(name, code)  \
MakeCmd(name "ui8", code + 0)      \
MakeCmd(name "ui16", code + 1)     \
MakeCmd(name "ui32", code + 2)     \
MakeCmd(name "ui64", code + 3)     \
VoidCmd(name "flt32")              \
VoidCmd(name "flt64")

        if (cmd == "mov") {
            if (tokens.size() < 4)
                throw CompilerError("mov syntax: mov <reg> <any-string> <data>");
            buffer.push_back(0x00);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[1]);
            ui64 data = std::stoull(tokens[3]);
            writeReg(buffer, reg, data);
            
            goto over;
        }

        CreateCmd("add", 0x00)
        CreateCmd("sub", 0x06)
        CreateCmd("mul", 0xc)
        CreateCmd("div", 0x12)
        CreateCmd("big", 0x18)
        CreateCmd("small", 0x1e)
        CreateCmd("equal", 0x24)
        CreateBitsCmd("and", 0x2a)
        CreateBitsCmd("or", 0x30)
        CreateUnaryBitsCmd("not", 0x36)
        CreateBitsCmd("xor", 0x3c)
        CreateBitsCmd("logicand", 0x42)
        CreateBitsCmd("logicor", 0x48)
        CreateUnaryCmd("logicnot", 0x4e)

        CreateTT("ui8", 0x54)
        CreateTT("ui16", 0x5a)
        CreateTT("ui32", 0x60)
        CreateTT("ui64", 0x66)
        CreateTT("flt32", 0x6c)
        CreateTT("flt64", 0x72)

        if (cmd == "putchar") {
            if (tokens.size() < 3)
                throw CompilerError("putchar syntax: putchar <any-string> <reg>");
            buffer.push_back(0x01);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[2]);
            buffer.push_back(static_cast<char>(reg));

            goto over;
        }

        if (cmd == "go") {
            if (tokens.size() < 3)
                throw CompilerError("go syntax: go <any-string> <label/number>");

            buffer.push_back(0x02);
            buffer.push_back(0x01);

            ui64 location;

            if (map.count(tokens[2]))
                location = map[tokens[2]];
            else
                location = static_cast<ui64>(std::stoull(tokens[2]));

            write(buffer, location, BIT32TYPE);

            goto over;
        }

        if (cmd == "goes") {
            if (tokens.size() < 4)
                throw CompilerError("goes syntax: goes <any-string> <label/number> <any-string> <reg>");

            buffer.push_back(0x03);
            buffer.push_back(0x01);

            ui64 location;

            if (map.count(tokens[2]))
                location = map[tokens[2]];
            else
                location = static_cast<ui64>(std::stoull(tokens[2]));

            ui8 reg = storeg(tokens[4]);

            buffer.push_back(static_cast<char>(reg));
            write(buffer, location, BIT32TYPE);

            goto over;
        }

        if (cmd == "str") {
            if (tokens.size() < 4)
                throw CompilerError("str syntax: str <reg> <any-string> <location>");

            buffer.push_back(0x04);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[1]);
            ui64 location = static_cast<ui64>(std::stoull(tokens[3]));

            buffer.push_back(static_cast<char>(reg));
            write(buffer, location, BIT32TYPE);

            goto over;
        }
        
        if (cmd == "load") {
            if (tokens.size() < 4)
                throw CompilerError("load syntax: load <reg> <any-string> <location>");
            
            buffer.push_back(0x05);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[1]);
            ui64 location = static_cast<ui64>(std::stoull(tokens[3]));

            buffer.push_back(static_cast<char>(reg));
            write(buffer, location, BIT32TYPE);

            goto over;
        }

        if (cmd == "gous") {
            if (tokens.size() < 3)
                throw CompilerError("gous syntax: gous <any-string> <reg>");

            buffer.push_back(0x06);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[2]);

            buffer.push_back(static_cast<char>(reg));

            goto over;
        }

        if (cmd == "goesus") {
            if (tokens.size() < 4)
                throw CompilerError("goesus syntax: goesus <any-string> <reg> <any-string> <reg>");

            buffer.push_back(0x07);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[2]);
            ui8 reg2 = storeg(tokens[4]);

            buffer.push_back(static_cast<char>(reg));
            buffer.push_back(static_cast<char>(reg2));

            goto over;
        }

        if (cmd == "strus") {
            if (tokens.size() < 4)
                throw CompilerError("strus syntax: strus <reg> <any-string> <location>");

            buffer.push_back(0x08);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[1]);
            ui8 reg2 = storeg(tokens[3]);;

            buffer.push_back(static_cast<char>(reg));
            buffer.push_back(static_cast<char>(reg2));

            goto over;
        }
        
        if (cmd == "loadus") {
            if (tokens.size() < 4)
                throw CompilerError("loadus syntax: loadus <reg> <any-string> <location>");
            
            buffer.push_back(0x09);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[1]);
            ui8 reg2 = storeg(tokens[3]);;

            buffer.push_back(static_cast<char>(reg));
            buffer.push_back(static_cast<char>(reg2));

            goto over;
        }

        if (cmd == "purs") {
            if (tokens.size() < 4)
                throw CompilerError("purs syntax: purs <any-string> <reg>");
            
            buffer.push_back(0x0a);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[2]);

            buffer.push_back(static_cast<char>(reg));

            goto over;
        }

        if (cmd == "pors") {
            if (tokens.size() < 4)
                throw CompilerError("pors syntax: pors");
            
            buffer.push_back(0x0b);
            buffer.push_back(0x01);

            goto over;
        }

        if (cmd == "cors") {
            if (tokens.size() < 4)
                throw CompilerError("cors syntax: cors <any-string> <reg>");
            
            buffer.push_back(0x0c);
            buffer.push_back(0x01);

            ui8 reg = storeg(tokens[2]);

            buffer.push_back(static_cast<char>(reg));

            goto over;
        }

        if (cmd == "halt") {

            buffer.push_back(0xFF);
            buffer.push_back(0xF);
            
            goto over;
        }

        throw CompilerError("Unknown command: " + cmd);

over:

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
