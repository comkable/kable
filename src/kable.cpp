
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

#include <cstring>
#include <cstdlib>
#include <stdexcept>
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <algorithm>

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
    }
};

class TokenError : public Error {
public:
    TokenError(std::string msg) {
        this->name = "TokenError";
        this->msg = msg;
    }
};

class ASTError : public Error {
public:
    ASTError(std::string msg) {
        this->name = "ASTError";
        this->msg = msg;
    }
};

enum Type: uint16_t {
    IF, ELSE, WHILE,
    DIGITS, IDENTIFIER,
    END,
    OPERATOR,
        BIGGER, SMALLER, EQUALS, EQUAL, AND, OR, NOT,
        BIGGER_EQUAL, SMALLER_EQUAL, NOT_EQUAL,
        EACH_AND, EACH_OR, EACH_NOT, EACH_XOR,
        ADD, SUB, MUL, DIV, MOD,
    FUNCTION,
        LEFT_PAREN, RIGHT_PAREN, LEFT_BRACE, RIGHT_BRACE,
    SEMICOLON,
    COMMA,
    PARAMS, BODY, TYPES,
    AT, RETURN,
    INCLUDE,
        STRING, CHAR, FLOAT, EXPR, // TODO
    UNKNOWN
};

struct HeadType {
    Type type;
    HeadType() = default;
    HeadType(Type type) {
        this->type = type;
    }
};

struct Token {
    HeadType head;
    std::string str;
};

using chars = std::vector<char>;
using Tokens = std::vector<Token>;

class AST {
    using ASTs = std::vector<AST>;
private:
    ASTs asts;
    std::string str;
    Type type;
public:
    AST(const ASTs& asts, const std::string& str, Type type) : asts(asts), str(str), type(type) {}

    static auto turn(const Tokens& tokens) -> AST {
        struct Functions {
            Tokens& tokens;
            SizeType pos = 0;

            Functions(const Tokens& tokens) : tokens(const_cast<Tokens&>(tokens)) {}

            auto match(Type type) -> bool {
                if (tokens[pos].head.type == type) {
                    pos++;
                    return true;
                }
                return false;
            }

            auto check(Type type) -> bool {
                return tokens[pos].head.type == type; // isEqual
            }

            auto matchValue() -> bool {
                return match(DIGITS) || match(STRING) || match(CHAR) || match(FLOAT) || match(OPERATOR);
            }

            auto checkValue() -> bool {
                return check(DIGITS) || check(STRING) || check(CHAR) || check(FLOAT) || check(OPERATOR);
            }

            auto expr() -> AST {
                if (matchValue()) {
                    AST value1 = AST({}, tokens[pos - 1].str, EXPR);
                    if (match(OPERATOR)) {
                        std::string& operatorS = tokens[pos - 1].str;
                        if (!checkValue())
                            throw ASTError("Except a value after a operator");
                        AST value2 = AST({}, tokens[pos].str, EXPR);
                        return AST({value1, value2}, operatorS, EXPR);
                    }
                    return value1;
                }
                else if (match(OPERATOR)) {
                    std::string& operatorS = tokens[pos - 1].str;
                    if (!checkValue())
                        throw ASTError("Except a value after a operator");
                    AST value = AST({}, tokens[pos].str, EXPR);
                    return AST({value}, operatorS, EXPR);
                }
                else
                    throw ASTError("Except a value");
            }

            auto stmt() -> AST {
                // TODO
            }

            auto main() -> AST {
                return {{}, "", UNKNOWN};
            }
        };
        Functions functions(tokens); // functions
        return functions.main(); // get main
    }
};

static inline auto printAllTokens(const Tokens& tokens) -> void {
    for (const Token& token : tokens) {
        std::cout << "Type: " << token.head.type << "\n";
        std::cout << "Str : " << token.str << "\n\n";
    }
    std::cout << std::flush;
}

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

static inline auto isDigits(const std::string& str) -> bool {
    if (str.empty()) return false;
    for (char c : str)
        if (!isdigit(static_cast<unsigned char>(c)))
            return false;
    return true;
}

static inline auto isIderCharExceptNumber(const char c) -> bool {
    return ('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z') ||
            c == '_';
}

static inline auto isIderChar(const char c) -> bool {
    return isIderCharExceptNumber(c) || isdigit(static_cast<unsigned char>(c));
}

static inline auto isIdentifier(const std::string& str) -> bool {
    if (str.empty()) return false;
    if (!isIderCharExceptNumber(str[0]))
        return false;
    for (size_t i = 1; i < str.size(); ++i)
        if (!isIderChar(str[i]))
            return false;
    return true;
}

static inline auto isWhite(const char c) -> bool {
    return isspace(static_cast<unsigned char>(c));
}

static inline auto isWhites(const std::string& str) -> bool {
    for (char c : str)
        if (!isWhite(c))
            return false;
    return true;
}

static inline auto upper(std::string& str) -> void {
    std::transform(str.begin(), str.end(), str.begin(), toupper);
}

static inline auto typeToken(const std::string& str) -> Type {
    // printf("%s\n", str.c_str());

    if (str.size() < 9) { // a small optimization for most tokens
        std::string newString = str;
        upper(newString);
        if (newString == "IF") return IF;
        if (newString == "ELSE") return ELSE;
        if (newString == "END") return END;
        if (newString == "BIGGER") return BIGGER;
        if (newString == "SMALLER") return SMALLER;
        if (newString == "EQUAL") return EQUAL;
        if (newString == "RETURN") return RETURN;
        if (newString == "INCLUDE") return INCLUDE;
        if (newString == "WHILE") return WHILE;
        if (newString == "FUNCTION") return FUNCTION;

        if (newString == "(") return LEFT_PAREN;
        if (newString == ")") return RIGHT_PAREN;
        if (newString == "{") return LEFT_BRACE;
        if (newString == "}") return RIGHT_BRACE;
        if (newString == ";") return SEMICOLON;
        if (newString == ",") return COMMA;

        if (newString == "+")  return OPERATOR;
        if (newString == "-")  return OPERATOR;
        if (newString == "*")  return OPERATOR;
        if (newString == "/")  return OPERATOR;
        if (newString == "%")  return OPERATOR;
        if (newString == "@")  return OPERATOR;
        if (newString == "==") return OPERATOR;
        if (newString == "&&") return OPERATOR;
        if (newString == "||") return OPERATOR;
        if (newString == "!")  return OPERATOR;
        if (newString == "=")  return OPERATOR;
        if (newString == "!=") return OPERATOR;
        if (newString == ">=") return OPERATOR;
        if (newString == "<=") return OPERATOR;
        if (newString == "|")  return OPERATOR;
        if (newString == "~")  return OPERATOR;
        if (newString == "&")  return OPERATOR;
        if (newString == "^")  return OPERATOR;
    }

    if (isDigits(str)) return DIGITS;
    // printf("%s\n", str.c_str());
    if (isIdentifier(str)) return IDENTIFIER;
    // printf("%s\n", str.c_str());

    return UNKNOWN;
}

static inline auto lexer(const std::string& str) -> Tokens {
    Tokens tokens;
#ifdef NEED_LINE
    std::size_t line = 1;
#endif
    std::string buffer;
    buffer.reserve(64);
    tokens.reserve(str.size() / 10 + 10);

    auto it = str.cbegin();
    const auto end = str.cend();

    bool isString = false;
    bool isChar = false;

    for (; it != end; ++it) {
        char c = *it;

        if (c == '\n') {
#ifdef NEED_LINE
            ++line;
#endif
            if (isString || isChar)
                throw TokenError("unclosed string/char");

            if (!buffer.empty()) {
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer)});
                buffer.clear();
            }
            continue;
        }

        if (isString) {
            if (c == '"') {
                tokens.emplace_back(Token{STRING, std::move(buffer)});
                buffer.clear();
                isString = false;
                continue;
            }
            if (c == '\\') {
                if (std::next(it) == end)
                    throw TokenError("escape at end");
                char next_c = *std::next(it);
                if (next_c == '"') {
                    buffer += '"';
                    ++it;
                    continue;
                }
            }
            buffer += c;
            continue;
        }

        if (isChar) {
            if (c == '\'') {
                tokens.emplace_back(Token{CHAR, std::move(buffer)});
                buffer.clear();
                isChar = false;
                continue;
            }
            if (c == '\\') {
                if (std::next(it) == end)
                    throw TokenError("escape at end");
                ++it;
            }
            buffer += c;
            continue;
        }

        if (isWhite(c)) {
            if (!buffer.empty()) {
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer)});
                buffer.clear();
            }
            continue;
        }

        if (c == '"') {
            isString = true;
            continue;
        }
        if (c == '\'') {
            isChar = true;
            continue;
        }

        if (std::next(it) != end) {
            char nc = *std::next(it);
            bool match = false;
            std::string op;

            switch (c) {
                case '=': if (nc == '=') { op = "=="; match = true; } break;
                case '!': if (nc == '=') { op = "!="; match = true; } break;
                case '&': if (nc == '&') { op = "&&"; match = true; } break;
                case '|': if (nc == '|') { op = "||"; match = true; } break;
                case '+': case '-': case '*': case '/': case '%':
                    if (nc == '=') { op = std::string(1, c) + '='; match = true; } break;
                default: break;
            }

            if (match) {
                if (!buffer.empty()) {
                    tokens.emplace_back(Token{typeToken(buffer), std::move(buffer)});
                    buffer.clear();
                }
                tokens.emplace_back(Token{typeToken(op), std::move(op)});
                ++it;
                continue;
            }
        }

        if (c == '/' && std::next(it) != end && *std::next(it) == '/') {
            while (it != end && *it != '\n') ++it;
            if (it != end) --it;
            continue;
        }

        static const char* singleOps = "(){};,+-*/@=%&|!\"'";
        if (std::strchr(singleOps, c)) {
            if (!buffer.empty()) {
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer)});
                buffer.clear();
            }
            tokens.emplace_back(Token{typeToken(std::string(1, c)), std::string(1, c)});
            continue;
        }

        buffer += c;
    }

    if (isString || isChar)
        throw TokenError("unclosed string/char at EOF");

    if (!buffer.empty())
        tokens.emplace_back(Token{typeToken(buffer), std::move(buffer)});

    return tokens;
}

static inline auto parser(const Tokens& tokens) -> AST {
    return AST::turn(tokens);
}

static inline auto usage(const std::string& str) -> void {
    std::cout << str + " <path> [-o <path>]" << std::endl;
    exit(EXIT_FAILURE);
}

static inline auto compiler(const std::string& str) -> chars {
    chars cs;
    // TODO
    return cs;
}

auto main(int argc, char** _argv) -> int {
    std::vector<std::string> argv;
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
