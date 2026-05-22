
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

#include <utility>
#include <cstring>
#include <cstdlib>
#include <stdexcept>
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <iostream>
#include <vector>
#include <string>
#include <cstdint>
#include <algorithm>

using ui16 = uint16_t;

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

class TokenError : public Error {
public:
    TokenError(std::string msg) {
        this->name = "TokenError";
        this->msg = msg;
    }
};

class ASTError : public Error {
public:
    ASTError(std::string msg, SizeType line) {
        this->name = "ASTError";
        this->msg = msg;
        throws(line);
    }
};

enum Type : uint16_t {
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
        COMMA, PARAMS, STMTS, TYPES, NAMES, BODY,
    AT, RETURN,
    INCLUDE,
        STRING, CHAR, FLOAT, EXPR,
    UNKNOWN
};

struct HeadType {
    Type type;
    HeadType() = default;
    HeadType(Type type) : type(type) {}
};

struct Token {
    HeadType head;
    std::string str;
    SizeType line;
};

using chars = std::vector<char>;
using Tokens = std::vector<Token>;

class _AST {
    using _ASTs = std::vector<_AST*>;
private:
    _ASTs asts;
    std::string str;
    Type type;
public:
    _AST() = default;

    _AST(const _ASTs& asts, const std::string& str, Type type)
        : asts(asts), str(str), type(type) {}

    auto tostring(ui16 indent) const -> std::string {
        std::string indentStr;
        for (ui16 i = 0; i < indent; i++)
            indentStr += " ";

        std::string str = indentStr + "ASTS:\n";
        for (_AST* ast : asts)
            str += ast->tostring(indent + 2);

        str += indentStr + "STR: " + this->str + "\n";
        str += indentStr + "TYPE: " + std::to_string(this->type) + "\n";
        return str;
    }

    void operator=(const _AST& ast) {
        this->asts = ast.asts;
        this->str = ast.str;
        this->type = ast.type;
    }

    friend class AST;
};

class AST {
    using ASTs = std::vector<AST>;
private:
    _AST* ast = nullptr;
public:
    AST() = default;

    AST(const ASTs& asts, const std::string& str, Type type) {
        ast = new _AST;
        for (const AST& a : asts) {
            if (a.ast) {
                ast->asts.push_back(new _AST(*a.ast));
            }
        }
        ast->str = str;
        ast->type = type;
    }

    ~AST() {
        if (ast) {
            for (_AST* child : ast->asts)
                delete child;
            delete ast;
        }
    }

    auto tostring(ui16 indent) const -> std::string {
        if (ast) return ast->tostring(indent);
        return "";
    }

    static auto turn(const Tokens& tokens) -> AST {
        struct Functions {
const Tokens& tokens;
SizeType pos = 0;

Functions(const Tokens& tokens) : tokens(tokens), pos(0) {}

auto match(Type type) -> bool {
    if (pos >= tokens.size()) return false;
    if (tokens[pos].head.type == type) {
        pos++;
        return true;
    }
    return false;
}

auto check(Type type) -> bool {
    if (pos >= tokens.size()) return false;
    return tokens[pos].head.type == type;
}

auto matchValue() -> bool {
    return match(DIGITS) || match(STRING) || match(CHAR) || match(FLOAT) || match(OPERATOR);
}

auto checkValue() -> bool {
    return check(DIGITS) || check(STRING) || check(CHAR) || check(FLOAT) || check(OPERATOR);
}

auto matchType() -> bool {
    return match(IDENTIFIER);
}

auto checkType() -> bool {
    return check(IDENTIFIER);
}

auto factor() -> AST {
    if (matchValue()) {
        return AST({}, tokens[pos-1].str, EXPR);
    }
    if (match(LEFT_PAREN)) {
        AST a = expr();
        if (!match(RIGHT_PAREN))
            throw ASTError("Expected ')'", tokens[pos].line);
        return a;
    }
    throw ASTError("Expected a value as factor", tokens[pos].line);
}

auto term1() -> AST {
    AST left = term1();
    while (true) {
        if (pos >= tokens.size()) break;
        const std::string& op = tokens[pos].str;
        if (op != "*" && op != "/") break;
        pos++;
        AST right = factor();
        return AST({left, right}, op, EXPR);
    }
    return left;
}

auto expr() -> AST {
    AST left = term1();
    while (true) {
        if (pos >= tokens.size()) break;
        const std::string& op = tokens[pos].str;
        if (op != "+" && op != "-") break;
        pos++;
        AST right = term1();
        return AST({left, right}, op, EXPR);
    }
    return left;
}

auto type() -> AST {
    if (match(IDENTIFIER)) {
        return AST({}, tokens[pos-1].str, TYPES);
    }
    throw ASTError("Expected a type", tokens[pos].line);
}

auto stmt() -> AST {
    if (checkType()) {
        AST t = type();
        if (match(IDENTIFIER)) {
            return AST({t}, tokens[pos-1].str, TYPES);
        }
    }
    return AST({}, "", UNKNOWN);
}

auto main() -> AST {
    return AST({}, "", UNKNOWN);
}
};

        Functions f(tokens);
        return f.main();
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
#define NEED_LINE
#ifdef NEED_LINE
    SizeType line = 1;
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
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer), line});
                buffer.clear();
            }
            continue;
        }

        if (isString) {
            if (c == '"') {
                tokens.emplace_back(Token{STRING, std::move(buffer), line});
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
                tokens.emplace_back(Token{CHAR, std::move(buffer), line});
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
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer), line});
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
                    tokens.emplace_back(Token{typeToken(buffer), std::move(buffer), line});
                    buffer.clear();
                }
                tokens.emplace_back(Token{typeToken(op), std::move(op), line});
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
                tokens.emplace_back(Token{typeToken(buffer), std::move(buffer), line});
                buffer.clear();
            }
            tokens.emplace_back(Token{typeToken(std::string(1, c)), std::string(1, c), line});
            continue;
        }

        buffer += c;
    }

    if (isString || isChar)
        throw TokenError("unclosed string/char at EOF");

    if (!buffer.empty())
        tokens.emplace_back(Token{typeToken(buffer), std::move(buffer), line});

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
