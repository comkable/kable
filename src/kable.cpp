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

#include <utility>
#include <cstring>
#include <cstdlib>
#include <stdexcept>
#include <unordered_map>
#include <stack>
#include <iostream>
#include <fstream>
#include <tuple>
#include <vector>
#include <string>
#include <cstdint>
#include <algorithm>
#include <array>
#include <cctype>

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
        std::string temp = std::string("Throwed in line ") + std::to_string(line) + "\n"
            + "ERROR " + this->name + " : \033[31m" + this->msg + "\033[0m";
        return temp;
    }

    auto what() const -> std::string {
        std::string temp = "Throwed\nERROR " + this->name + " : \033[31m" + this->msg + "\033[0m";
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
    TokenError(std::string msg, SizeType line) {
        this->name = "TokenError";
        this->msg = msg;
        throws(line);
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

class KASMError : public Error {
public:
    KASMError(std::string msg, SizeType line) {
        this->name = "KASMError";
        this->msg = msg;
        throws(line);
    }
    KASMError(std::string msg) {
        this->name = "KASMError";
        this->msg = msg;
        throws();
    }
};

enum Type : uint16_t {
    ALL,
    IF, ELIF, ELSE, WHILE, END,
    KASM, INCLUDE, RETURN, AT,
    OPERATOR,
    BIGGER, SMALLER, EQUALS, EQUAL,
    BIGGER_EQUAL, SMALLER_EQUAL, NOT_EQUAL,
    AND, OR, NOT, EACH_AND, EACH_OR, EACH_NOT, EACH_XOR,
    ADD, SUB, MUL, DIV, MOD,
    LEFT_PAREN, RIGHT_PAREN, LEFT_BRACE, RIGHT_BRACE,
    SEMICOLON, COMMA,
    STRING, CHAR, FLOAT, DIGITS, IDENTIFIER,
    PARAMS, STMTS, TYPES, NAMES, BODY, EXPR,
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

using Tokens = std::vector<Token>;

class AST {
public:
    using ASTs = std::vector<AST*>;
    ASTs asts;
    std::string str;
    SizeType line;
    Type type;

    AST() = default;
    AST(const ASTs& asts, const std::string& str, SizeType line, Type type)
        : str(str), line(line), type(type) {
        for (const AST* ast : asts)
            if (ast) this->asts.push_back(new AST(*ast));
    }

    AST(const AST& other) : str(other.str), type(other.type), line(other.line) {
        for (AST* child : other.asts)
            asts.push_back(new AST(*child));
    }

    ~AST() {
        for (AST* child : asts)
            delete child;
        asts.clear();
    }

    AST& operator=(const AST& ast) {
        if (this == &ast) return *this;
        for (AST* child : asts) delete child;
        asts.clear();
        str = ast.str;
        type = ast.type;
        line = ast.line;
        for (AST* child : ast.asts)
            asts.push_back(new AST(*child));
        return *this;
    }

    auto tostring(ui16 indent = 0) const -> std::string {
        std::string indentStr(indent, ' ');
        std::string res = indentStr + "TYPE: " + std::to_string(type) + " STR: " + str + "\n";
        for (AST* child : asts)
            res += child->tostring(indent + 2);
        return res;
    }

    static auto turn(const Tokens& tokens) -> AST* {
        struct Functions {
            const Tokens& tokens;
            SizeType pos = 0;

            Functions(const Tokens& tokens) : tokens(tokens), pos(0) {}

            void match(Type type, const std::string& err = "syntax error") {
                if (pos >= tokens.size() || tokens[pos].head.type != type)
                    throw ASTError(err, pos < tokens.size() ? tokens[pos].line : 0);
                pos++;
            }

            bool check(Type type) {
                return pos < tokens.size() && tokens[pos].head.type == type;
            }

            AST* factor() {
                if (pos >= tokens.size()) throw ASTError("unexpected end", 0);
                if (check(DIGITS)) {
                    auto& t = tokens[pos++];
                    return new AST({}, t.str, t.line, DIGITS);
                }
                if (check(FLOAT)) {
                    auto& t = tokens[pos++];
                    return new AST({}, t.str, t.line, FLOAT);
                }
                if (check(IDENTIFIER)) {
                    auto& t = tokens[pos++];
                    return new AST({}, t.str, t.line, IDENTIFIER);
                }
                if (check(STRING)) {
                    auto& t = tokens[pos++];
                    return new AST({}, t.str, t.line, STRING);
                }
                if (check(LEFT_PAREN)) {
                    match(LEFT_PAREN);
                    AST* a = expr();
                    match(RIGHT_PAREN, "missing )");
                    return a;
                }
                throw ASTError("invalid factor", tokens[pos].line);
            }

            AST* term2() {
                AST* left = factor();
                while (pos < tokens.size()) {
                    std::string op;
                    if (check(BIGGER_EQUAL)) { op = ">="; pos++; }
                    else if (check(SMALLER_EQUAL)) { op = "<="; pos++; }
                    else if (check(NOT_EQUAL)) { op = "!="; pos++; }
                    else if (check(BIGGER)) { op = ">"; pos++; }
                    else if (check(SMALLER)) { op = "<"; pos++; }
                    else if (check(EQUALS)) { op = "=="; pos++; }
                    else break;
                    AST* right = factor();
                    left = new AST({left, right}, op, tokens[pos-1].line, EXPR);
                }
                return left;
            }

            AST* term1() {
                AST* left = term2();
                while (pos < tokens.size()) {
                    if (check(MUL)) {
                        auto& t = tokens[pos++];
                        AST* right = term2();
                        left = new AST({left, right}, "*", t.line, EXPR);
                    } else if (check(DIV)) {
                        auto& t = tokens[pos++];
                        AST* right = term2();
                        left = new AST({left, right}, "/", t.line, EXPR);
                    } else break;
                }
                return left;
            }

            AST* expr() {
                AST* left = term1();
                while (pos < tokens.size()) {
                    if (check(ADD)) {
                        auto& t = tokens[pos++];
                        AST* right = term1();
                        left = new AST({left, right}, "+", t.line, EXPR);
                    } else if (check(SUB)) {
                        auto& t = tokens[pos++];
                        AST* right = term1();
                        left = new AST({left, right}, "-", t.line, EXPR);
                    } else break;
                }
                return left;
            }

            AST* type() {
                if (check(IDENTIFIER)) {
                    auto& t = tokens[pos++];
                    return new AST({}, t.str, t.line, TYPES);
                }
                return new AST({}, "I64", 0, TYPES);
            }

            AST* stmt() {
                if (check(IF)) {
                    match(IF);
                    match(LEFT_PAREN);
                    AST* cond = expr();
                    match(RIGHT_PAREN);
                    match(LEFT_BRACE);
                    AST* body = main();
                    match(RIGHT_BRACE);

                    ASTs elifs;
                    while (check(ELIF)) {
                        match(ELIF);
                        match(LEFT_PAREN);
                        AST* e_cond = expr();
                        match(RIGHT_PAREN);
                        match(LEFT_BRACE);
                        AST* e_body = main();
                        match(RIGHT_BRACE);
                        elifs.push_back(new AST({e_cond, e_body}, "", 0, ELIF));
                    }

                    AST* else_ast = nullptr;
                    if (check(ELSE)) {
                        match(ELSE);
                        match(LEFT_BRACE);
                        else_ast = main();
                        match(RIGHT_BRACE);
                    }

                    ASTs kids = {cond, body};
                    for (auto* e : elifs) kids.push_back(e);
                    if (else_ast) kids.push_back(else_ast);
                    return new AST(kids, "", 0, IF);
                }

                if (check(WHILE)) {
                    match(WHILE);
                    match(LEFT_PAREN);
                    AST* cond = expr();
                    match(RIGHT_PAREN);
                    match(LEFT_BRACE);
                    AST* body = main();
                    match(RIGHT_BRACE);
                    return new AST({cond, body}, "", 0, WHILE);
                }

                if (check(KASM)) {
                    match(KASM);
                    match(LEFT_PAREN);
                    std::string s;
                    while (check(STRING)) {
                        s += tokens[pos++].str + "\n";
                    }
                    match(RIGHT_PAREN);
                    return new AST({}, s, 0, KASM);
                }

                if (check(IDENTIFIER)) {
                    std::string name = tokens[pos].str;
                    SizeType line = tokens[pos].line;
                    pos++;

                    if (check(AT)) {
                        match(AT);
                        AST* ty = type();
                        match(EQUAL);
                        AST* e = expr();
                        match(SEMICOLON);
                        return new AST({ty, e}, name, line, EQUAL);
                    } else {
                        if (check(EQUAL)) {
                            match(EQUAL);
                            AST* e = expr();
                            match(SEMICOLON);
                            return new AST({e}, name, line, EQUAL);
                        }
                        pos--;
                    }
                }

                AST* e = expr();
                match(SEMICOLON);
                return e;
            }

            AST* main() {
                ASTs stmts;
                while (pos < tokens.size() && !check(RIGHT_BRACE))
                    stmts.push_back(stmt());
                return new AST(stmts, "", 0, ALL);
            }
        };

        Functions f(tokens);
        try {
            return f.main();
        } catch (...) {
            throw;
        }
    }
};

static inline auto readAll(const std::string& filename) -> std::string {
    std::ifstream ifs(filename, std::ios::binary);
    if (!ifs) throw FileError("Cannot open: " + filename);
    return std::string(std::istreambuf_iterator<char>(ifs), {});
}

static inline auto saveAll(const std::string& filepath, const std::string& content) -> void {
    std::ofstream ofs(filepath, std::ios::binary);
    if (!ofs) throw FileError("Cannot save: " + filepath);
    ofs << content;
}

static inline bool isDigits(const std::string& str) {
    if (str.empty()) return false;
    for (char c : str) if (!isdigit(c)) return false;
    return true;
}

static inline bool isFloat(const std::string& s) {
    return s.find('.') != std::string::npos;
}

static inline std::string upper(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(), ::toupper);
    return s;
}

static const std::unordered_map<std::string, Type> keywords = {
    {"if", IF}, {"elif", ELIF}, {"else", ELSE}, {"while", WHILE},
    {"kasm", KASM}, {"return", RETURN}, {"include", INCLUDE}
};

static inline auto lexer(const std::string& str) -> Tokens {
    Tokens tokens;
    SizeType line = 1;
    std::string buffer;
    auto it = str.begin(), end = str.end();
    bool isString = false;

    while (it != end) {
        char c = *it;
        if (c == '\n') { line++; it++; continue; }
        if (isspace(c) && !isString) {
            if (!buffer.empty()) {
                if (keywords.count(buffer)) {
                    tokens.push_back({keywords.at(buffer), buffer, line});
                } else {
                    Type t = isDigits(buffer) ? DIGITS : (isFloat(buffer) ? FLOAT : IDENTIFIER);
                    tokens.push_back({t, buffer, line});
                }
                buffer.clear();
            }
            it++; continue;
        }

        if (c == '/' && it+1 != end && *(it+1) == '/') {
            while (it != end && *it != '\n') it++;
            continue;
        }
        if (c == '"') {
            isString = !isString;
            if (!isString) {
                tokens.push_back({STRING, buffer, line});
                buffer.clear();
            }
            it++; continue;
        }
        if (isString) { buffer += c; it++; continue; }

        if ((c == '>' && it+1 != end && *(it+1) == '=') ||
            (c == '<' && it+1 != end && *(it+1) == '=') ||
            (c == '!' && it+1 != end && *(it+1) == '=') ||
            (c == '=' && it+1 != end && *(it+1) == '=')) {
            if (!buffer.empty()) {
                Type t = isDigits(buffer) ? DIGITS : (isFloat(buffer) ? FLOAT : IDENTIFIER);
                tokens.push_back({t, buffer, line});
                buffer.clear();
            }
            std::string op;
            op += c; op += *(it+1);
            Type ty;
            if (op == ">=") ty = BIGGER_EQUAL;
            else if (op == "<=") ty = SMALLER_EQUAL;
            else if (op == "!=") ty = NOT_EQUAL;
            else ty = EQUALS;
            tokens.push_back({ty, op, line});
            it += 2;
            continue;
        }

        if (strchr("(){};,@+-*/%=<>!", c)) {
            if (!buffer.empty()) {
                Type t = isDigits(buffer) ? DIGITS : (isFloat(buffer) ? FLOAT : IDENTIFIER);
                tokens.push_back({t, buffer, line});
                buffer.clear();
            }
            Type t = UNKNOWN;
            switch(c) {
                case '(': t = LEFT_PAREN; break;
                case ')': t = RIGHT_PAREN; break;
                case '{': t = LEFT_BRACE; break;
                case '}': t = RIGHT_BRACE; break;
                case ';': t = SEMICOLON; break;
                case '@': t = AT; break;
                case '+': t = ADD; break;
                case '-': t = SUB; break;
                case '*': t = MUL; break;
                case '/': t = DIV; break;
                case '>': t = BIGGER; break;
                case '<': t = SMALLER; break;
                case '=': t = EQUAL; break;
                default:  t = OPERATOR; break;
            }
            tokens.push_back({t, std::string(1, c), line});
            it++; continue;
        }

        buffer += c; it++;
    }

    if (!buffer.empty()) {
        if (keywords.count(buffer)) {
            tokens.push_back({keywords.at(buffer), buffer, line});
        } else {
            Type t = isDigits(buffer) ? DIGITS : (isFloat(buffer) ? FLOAT : IDENTIFIER);
            tokens.push_back({t, buffer, line});
        }
    }
    return tokens;
}

static inline auto parser(const Tokens& tokens) -> AST* {
    return AST::turn(tokens);
}

static SizeType global_mem = 0;
static int label_cnt = 0;
static std::stack<std::unordered_map<std::string, SizeType>> var_scopes;
static std::stack<std::vector<SizeType>> mem_stack;

static void enter_scope() { var_scopes.push({}); mem_stack.push({}); }
static void leave_scope() {
    for (SizeType addr : mem_stack.top()) global_mem = addr;
    mem_stack.pop(); var_scopes.pop();
}

static bool find_var(const std::string& name, SizeType& out) {
    auto tmp = var_scopes;
    while (!tmp.empty()) {
        if (tmp.top().count(name)) { out = tmp.top()[name]; return true; }
        tmp.pop();
    }
    return false;
}

enum TypeOf { I8, I16, I32, I64, FLT32, FLT64 };

static SizeType type_size(TypeOf t) {
    switch(t) {
        case I8: return 1; case I16: return 2; case I32: return 4; case I64: return 8;
        case FLT32: return 4; case FLT64: return 8; default: return 8;
    }
}

static std::string new_label() { return "L" + std::to_string(label_cnt++); }

enum Kind { BUILTIN };
union As { TypeOf builtins; };
struct ValType {
    Kind kind; As as;
    ValType() : kind(BUILTIN), as(I64) {}
    ValType(Kind k, TypeOf t) : kind(k), as(t) {}
    ValType promote(ValType other) const {
        return ValType(BUILTIN, (TypeOf)std::max(as.builtins, other.as.builtins));
    }
};

static std::pair<const char*, const char*> getRegs(TypeOf t) {
    switch(t) {
        case I8: return {"reg0", "reg1"}; case I16: return {"reg4", "reg5"};
        case I32: return {"reg8", "reg9"}; case I64: return {"reg12", "reg13"};
        case FLT32: return {"reg16", "reg17"}; case FLT64: return {"reg20", "reg21"};
        default: return {"reg12", "reg13"};
    }
}

static std::string typeName(TypeOf t) {
    switch(t) {
        case I8: return "ui8"; case I16: return "ui16";
        case I32: return "ui32"; case I64: return "ui64";
        case FLT32: return "flt32"; case FLT64: return "flt64";
        default: return "ui64";
    }
}

static std::string opInst(std::string op, TypeOf t) {
    std::string n = typeName(t);
    if (op == "+") return "add"+n; if (op == "-") return "sub"+n;
    if (op == "*") return "mul"+n; if (op == "/") return "div"+n;
    if (op == ">") return "big"+n; if (op == "<") return "small"+n;
    if (op == ">=") return "bigeq"+n; if (op == "<=") return "smalleq"+n;
    if (op == "==") return "eq"+n; if (op == "!=") return "neq"+n;
    return "add"+n;
}

static ValType getValueType(const AST* ast) {
    if (ast->type == DIGITS) return {BUILTIN, I64};
    if (ast->type == FLOAT) return {BUILTIN, FLT64};
    if (ast->type == IDENTIFIER) {
        SizeType addr;
        if (find_var(ast->str, addr)) return {BUILTIN, I64};
    }
    return {BUILTIN, I64};
}

static TypeOf toType(const std::string& s) {
    std::string u = upper(s);
    if (u == "I8") return I8; if (u == "I16") return I16;
    if (u == "I32") return I32; if (u == "I64") return I64;
    if (u == "FLT32") return FLT32; if (u == "FLT64") return FLT64;
    return I64;
}

static inline std::string kasm(AST* ast) {
    if (!ast) return "";
    std::string res;
    auto [r1, r2] = getRegs(I64); // r1=reg12, r2=reg13
    const char* flag = "reg0";

    switch (ast->type) {
        case ALL:
            for (AST* c : ast->asts) res += kasm(c);
            break;
        
        case DIGITS:
            TypeOf type = getValueType(ast).as.builtins;
            std::string reg = getRegs(type).first;
            res = std::string() + "mov " + reg + "from" + ast->str + "\n";
            res = std::string() + "load " + reg + " to " + std::to_string(global_mem);
            global_mem += type_size(type);
            break;
        default: break;
    }
    return res;
}

static inline auto usage(const std::string& prog) {
    std::cout << "usage: " << prog << " <input> -o <out>\n";
    exit(0);
}

static inline std::string compiler(const std::string& code) {
    global_mem = 0;
    label_cnt = 0;
    while (!var_scopes.empty()) var_scopes.pop();
    while (!mem_stack.empty()) mem_stack.pop();

    enter_scope();
    Tokens tokens = lexer(code);
    AST* ast = parser(tokens);
    std::string out = kasm(ast);
    delete ast;
    leave_scope();
    return out;
}

int main(int argc, char** argv) {
    if (argc < 2) usage(argv[0]);
    std::string in, out = "a.kasm";
    for (int i=1; i<argc; i++) {
        if (std::string(argv[i]) == "-o" && i+1 < argc)
            out = argv[++i];
        else in = argv[i];
    }
    try {
        std::string code = readAll(in);
        std::string asmCode = compiler(code);
        saveAll(out, asmCode);
        std::cout << "Succeed: " << out << std::endl;
    } catch (...) {
        return 1;
    }
    return 0;
}