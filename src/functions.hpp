
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

#pragma once

#include "define.hpp"

#include <type_traits>
#include <stdexcept>
#include <cstring>
#include <cstdlib>
#include <vector>
#include <functional>
#include <cstdio>
#include <array>
#include <bit>
#include <cstdint>

#include <iostream>

#define ARGS ui8* args, SizeType& i

using chars = std::vector<char>;
using Function = std::function<void(ui8*, SizeType&)>;
using location = ui32;
using Reg = ui8;

static constexpr ui8 sizeofReg = sizeof(Reg);
static constexpr ui32 FunctionSize = 4096;
static constexpr SizeType MemorySize = 0x100000;

static std::array<ui8, MemorySize> memory;

static std::vector<ui32> returns; // may be crazy here
static SizeType returnsPtr = 0;

static inline void showMemory() {
    for (ui16 i = 0; i < 100; i++) {
        std::string str = std::to_string(static_cast<int>(memory[i]));
        std::cout << str;
        for (ui8 i = 0; i < 4 - str.size(); i++)
            std::cout << " ";
    }
}

#if 1 // regs
    ui8 regByte1Number1 = 0;
    ui8 regByte1Number2 = 0;
    ui8 regByte1Number3 = 0;
    ui8 regByte1Number4 = 0;

    ui16 regByte2Number1 = 0;
    ui16 regByte2Number2 = 0;
    ui16 regByte2Number3 = 0;
    ui16 regByte2Number4 = 0;

    ui32 regByte4Number1 = 0;
    ui32 regByte4Number2 = 0;
    ui32 regByte4Number3 = 0;
    ui32 regByte4Number4 = 0;

    ui64 regByte8Number1 = 0;
    ui64 regByte8Number2 = 0;
    ui64 regByte8Number3 = 0;
    ui64 regByte8Number4 = 0;

    void printReg() {
        showMemory();

        printf("======================= state =======================\n");

        printf("8  reg:  %02x  %02x  %02x  %02x\n",
            regByte1Number1,
            regByte1Number2,
            regByte1Number3,
            regByte1Number4);

        printf("16 reg:  %04x  %04x  %04x  %04x\n",
            regByte2Number1,
            regByte2Number2,
            regByte2Number3,
            regByte2Number4);

        printf("32 reg:  %08x  %08x  %08x  %08x\n",
            regByte4Number1,
            regByte4Number2,
            regByte4Number3,
            regByte4Number4);

        printf("64 reg:  %016lx  %016lx  %016lx  %016lx\n",
            regByte8Number1,
            regByte8Number2,
            regByte8Number3,
            regByte8Number4);

        printf("=====================================================\n");
    }
#endif

static inline ui8 readI8(const ui8* data) {
    return *data;
}

static inline ui16 readI16(const ui8* data) {
    ui16 val = *reinterpret_cast<const ui16*>(data);

    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap16(val);

    return val;
}

static inline ui32 readI32(const ui8* data) {
    ui32 val = *reinterpret_cast<const ui32*>(data);

    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap32(val);

    return val;
}

static inline ui64 readI64(const ui8* data) {
    ui64 val = *reinterpret_cast<const ui64*>(data);

    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap64(val);

    return val;
}

static inline ui64 readFlt32(const ui8* data) {
    float val = *reinterpret_cast<const float*>(data);

    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap32(val);

    return val;
}

static inline ui64 readFlt64(const ui8* data) {
    double val = *reinterpret_cast<const double*>(data);

    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap64(val);

    return val;
}

#define readReg(d) readI8(d)

static inline void regWrite(const void* data, Reg reg) {
    switch (reg) {
    case 0x0: regByte1Number1 = readI8(static_cast<const ui8*>(data)); break;
    case 0x1: regByte1Number2 = readI8(static_cast<const ui8*>(data)); break;
    case 0x2: regByte1Number3 = readI8(static_cast<const ui8*>(data)); break;
    case 0x3: regByte1Number4 = readI8(static_cast<const ui8*>(data)); break;

    case 0x4: regByte2Number1 = readI16(static_cast<const ui8*>(data)); break;
    case 0x5: regByte2Number2 = readI16(static_cast<const ui8*>(data)); break;
    case 0x6: regByte2Number3 = readI16(static_cast<const ui8*>(data)); break;
    case 0x7: regByte2Number4 = readI16(static_cast<const ui8*>(data)); break;

    case 0x8: regByte4Number1 = readI32(static_cast<const ui8*>(data)); break;
    case 0x9: regByte4Number2 = readI32(static_cast<const ui8*>(data)); break;
    case 0xa: regByte4Number3 = readI32(static_cast<const ui8*>(data)); break;
    case 0xb: regByte4Number4 = readI32(static_cast<const ui8*>(data)); break;

    case 0xc: regByte8Number1 = readI64(static_cast<const ui8*>(data)); break;
    case 0xd: regByte8Number2 = readI64(static_cast<const ui8*>(data)); break;
    case 0xe: regByte8Number3 = readI64(static_cast<const ui8*>(data)); break;
    case 0xf: regByte8Number4 = readI64(static_cast<const ui8*>(data)); break;

    default: printf("Unknown reg: %d", static_cast<int>(reg)); exit(EXIT_FAILURE);
    }
}

std::array<void*, 0x10> regTable = {
    &regByte1Number1,
    &regByte1Number2,
    &regByte1Number3,
    &regByte1Number4,
    &regByte2Number1,
    &regByte2Number2,
    &regByte2Number3,
    &regByte2Number4,
    &regByte4Number1,
    &regByte4Number2,
    &regByte4Number3,
    &regByte4Number4,
    &regByte8Number1,
    &regByte8Number2,
    &regByte8Number3,
    &regByte8Number4
};

static inline void* regRead(Reg reg) {
    return regTable[reg]; // no error
}

static inline ui64 regReadI64(Reg reg) {
    switch (reg) {
    case 0x0: return regByte1Number1;
    case 0x1: return regByte1Number2;
    case 0x2: return regByte1Number3;
    case 0x3: return regByte1Number4;

    case 0x4: return regByte2Number1;
    case 0x5: return regByte2Number2;
    case 0x6: return regByte2Number3;
    case 0x7: return regByte2Number4;

    case 0x8: return regByte4Number1;
    case 0x9: return regByte4Number2;
    case 0xa: return regByte4Number3;
    case 0xb: return regByte4Number4;

    case 0xc: return regByte8Number1;
    case 0xd: return regByte8Number2;
    case 0xe: return regByte8Number3;
    case 0xf: return regByte8Number4;

    default: return -1;
    }
}

static inline void readMemoryToReg(ui64 location, Reg reg) {
    regWrite(memory.data() + location, reg);
}

static inline void write(ui8* buffer, ui64 data, ui8 type) {
    switch (type) {
        case 0x0:
            buffer[0] = data & 0xFF;
            break;
        case 0x1:
            buffer[0] = data & 0xFF;
            buffer[1] = (data >> 8) & 0xFF;
            break;
        case 0x2:
            buffer[0] = data & 0xFF;
            buffer[1] = (data >> 8) & 0xFF;
            buffer[2] = (data >> 16) & 0xFF;
            buffer[3] = (data >> 24) & 0xFF;
            break;
        case 0x3:
            buffer[0] = data & 0xFF;
            buffer[1] = (data >> 8) & 0xFF;
            buffer[2] = (data >> 16) & 0xFF;
            buffer[3] = (data >> 24) & 0xFF;
            buffer[4] = (data >> 32) & 0xFF;
            buffer[5] = (data >> 40) & 0xFF;
            buffer[6] = (data >> 48) & 0xFF;
            buffer[7] = (data >> 56) & 0xFF;
            break;
        default:
            throw std::runtime_error("Invalid register type: " + std::to_string(type));
    }
}

static inline void writeMemory(ui64 location, ui64 data, ui8 type) {
    write(memory.data() + location, data, type);
}

template <typename T>
static inline T readMemory(ui64 location, ui8 type) {
    switch (type) {
    case 0x00:
        return readI8(memory[location]);
        break;
    case 0x01:
        return readI16(memory[location]);
        break;
    case 0x02:
        return readI32(memory[location]);
        break;
    case 0x03:
        return readI64(memory[location]);
        break;
    }
}

template <typename T>
static T readLE(const void* ptr) {
    T val;
    std::memcpy(&val, ptr, sizeof(T));

    if constexpr (std::endian::native != std::endian::little) {
        if constexpr (sizeof(T) == 1) return val;
        if constexpr (sizeof(T) == 2) return __builtin_bswap16(val);
        if constexpr (sizeof(T) == 4) return __builtin_bswap32(val);
        if constexpr (sizeof(T) == 8) return __builtin_bswap64(val);
    }
    return val;
}

template <typename T>
static T readRegVal(Reg r) {
    return readLE<T>(regRead(r));
}

template <typename Op, typename T>
static void binaryOp(ARGS) {
    Reg r1 = readReg(args); args += sizeofReg;
    Reg r2 = readReg(args); args += sizeofReg;
    Reg r3 = readReg(args); args += sizeofReg;

    T a = readRegVal<T>(r1);
    T b = readRegVal<T>(r2);
    T res = Op{}(a, b);

    regWrite(&res, r3);
    i++;
}

template <typename Op, typename T>
static void unaryOp(ARGS) {
    Reg r1 = readReg(args); args += sizeofReg;
    Reg r2 = readReg(args); args += sizeofReg;

    T a = readRegVal<T>(r1);
    T res = Op{}(a);

    regWrite(&res, r2);
    i++;
}

struct Add { template <typename T> static void Run(ARGS) { binaryOp<std::plus<T>, T>(args, i); } };
struct Sub { template <typename T> static void Run(ARGS) { binaryOp<std::minus<T>, T>(args, i); } };
struct Mul { template <typename T> static void Run(ARGS) { binaryOp<std::multiplies<T>, T>(args, i); } };
struct Div { template <typename T> static void Run(ARGS) { binaryOp<std::divides<T>, T>(args, i); } };
struct Big { template <typename T> static void Run(ARGS) { binaryOp<std::greater<T>, T>(args, i); } };
struct Small { template <typename T> static void Run(ARGS) { binaryOp<std::less<T>, T>(args, i); } };
struct Equal { template <typename T> static void Run(ARGS) { binaryOp<std::equal_to<T>, T>(args, i); } };

struct And { template <typename T> static void Run(ARGS) { binaryOp<std::bit_and<T>, T>(args, i); } };
struct Or { template <typename T> static void Run(ARGS) { binaryOp<std::bit_or<T>, T>(args, i); } };
struct Not { template <typename T> static void Run(ARGS) { unaryOp<std::bit_not<T>, T>(args, i); } };
struct Xor { template <typename T> static void Run(ARGS) { binaryOp<std::bit_xor<T>, T>(args, i); } };

struct LogicalAnd  { template<typename T> static void Run(ARGS) { binaryOp<std::logical_and<T>, T>(args, i); } };
struct LogicalOr   { template<typename T> static void Run(ARGS) { binaryOp<std::logical_or<T>, T>(args, i); } };
struct LogicalNot  { template<typename T> static void Run(ARGS) { unaryOp<std::logical_not<T>, T>(args, i); } };

struct mov {
    static void Mov(ARGS) {
        Reg reg = readReg(args); args += sizeofReg;
        regWrite(args, reg);
        i++;
    }
};

struct putchar {
    static void Putchar(ARGS) {
        Reg reg = readReg(args);
        char c = readRegVal<ui8>(reg);
        ioChar(c);
        i++;
    }
};

struct goto_ {
    static void goto__(ARGS) {
        ui32 c = readI32(args);
        i = c;
    }
};

struct gotoif {
    static void gotoif_(ARGS) {
        Reg reg = readReg(args);

        if (readRegVal<ui8>(reg))
            i = readI32(args + 1);
        else
            i++;
    }
};

struct store {
    static void Store(ARGS) {
        Reg r = readReg(args); args += sizeofReg;
        ui32 location = readI32(args);

        writeMemory(location, regReadI64(r), r / 4);

        i++;
    }
};

struct load {
    static void Load(ARGS) {
        Reg reg = readReg(args); args += sizeofReg;
        ui32 location = readI32(args);

        readMemoryToReg(location, reg);

        i++;
    }
};

struct storeus {
    static void Storeus(ARGS) {
        Reg reg = readReg(args); args += sizeofReg;
        Reg reg2 = readReg(args);

        writeMemory(readRegVal<ui32>(reg2), regReadI64(reg), reg2 / 4);

        i++;
    }
};

struct loadus {
    static void Loadus(ARGS) {
        Reg reg = readReg(args); args += sizeofReg;
        Reg reg2 = readReg(args);

        readMemoryToReg(readRegVal<ui32>(reg2), reg);

        i++;
    }
};

struct gotous {
    static inline void Gotous(ARGS) {
        Reg reg = readReg(args);

        i = readRegVal<ui32>(reg);
    }
};

struct gotoifus {
    static inline void Gotoifus(ARGS) {
        Reg reg = readReg(args); args += sizeofReg;
        Reg reg2 = readReg(args); args += sizeofReg;

        if (readRegVal<ui8>(reg2))
            i = readRegVal<ui32>(reg);
        else
            i++;
    }
};

struct CORS {
    static inline void CopyReturnsStack(ARGS) {
        Reg reg = readReg(args);

        regWrite(returns.data() + returnsPtr, reg);
    }
};

struct PORS {
    static inline void PopReturnsStack(ARGS) {
        if (returnsPtr)
            returnsPtr--;
    }
};

struct PURS {
    static inline void PushReturnsStack(ARGS) {
        Reg reg = readReg(args);

        returns[returnsPtr] = readRegVal<ui32>(reg);
    }
};

static inline void cannotUse(ARGS) {
    ioString("This cannot be used.\n");
    exit(EXIT_FAILURE);
}
// TODO
std::array<Function, FunctionSize> functions;

static inline void loadFunctions() {
    for (Function& function : functions)
        function = &cannotUse;

#if 1 // operatings

    SizeType number = 0;

#define CREATE_FUNCTIONS(name)                   \
do {                                             \
    functions[number++] = &name::Run<ui8>;       \
    functions[number++] = &name::Run<ui16>;      \
    functions[number++] = &name::Run<ui32>;      \
    functions[number++] = &name::Run<ui64>;      \
    functions[number++] = &name::Run<float>;     \
    functions[number++] = &name::Run<double>;    \
} while (0)

#define CREATE_BITS_FUNCTIONS(name)              \
do {                                             \
    functions[number++] = &name::Run<ui8>;       \
    functions[number++] = &name::Run<ui16>;      \
    functions[number++] = &name::Run<ui32>;      \
    functions[number++] = &name::Run<ui64>;      \
    number++;                                    \
    number++;                                    \
} while (0)

        CREATE_FUNCTIONS(Add);
        // 5
        CREATE_FUNCTIONS(Sub);
        // 11
        CREATE_FUNCTIONS(Mul);
        // 17
        CREATE_FUNCTIONS(Div);
        // 23
        CREATE_FUNCTIONS(Big);
        // 29
        CREATE_FUNCTIONS(Small);
        // 35
        CREATE_FUNCTIONS(Equal);
        // 41
        CREATE_BITS_FUNCTIONS(And);
        // 47
        CREATE_BITS_FUNCTIONS(Or);
        // 53
        CREATE_BITS_FUNCTIONS(Not);
        // 59
        CREATE_BITS_FUNCTIONS(Xor);
        // 65
        CREATE_BITS_FUNCTIONS(LogicalAnd);
        // 71
        CREATE_BITS_FUNCTIONS(LogicalOr);
        // 77
        CREATE_BITS_FUNCTIONS(LogicalNot);
#endif

    functions[0x100] = &mov::Mov;
    functions[0x101] = &putchar::Putchar;
    functions[0x102] = &goto_::goto__;
    functions[0x103] = &gotoif::gotoif_;

    functions[0x104] = &store::Store;
    functions[0x105] = &load::Load;

    functions[0x106] = &gotous::Gotous;
    functions[0x107] = &gotoifus::Gotoifus;

    functions[0x108] = &storeus::Storeus;
    functions[0x109] = &loadus::Loadus;

    functions[0x10a] = &PURS::PushReturnsStack;
    functions[0x10b] = &PORS::PopReturnsStack;
    functions[0x10c] = &CORS::CopyReturnsStack;

    functions[FunctionSize-1] = [](ARGS) -> void { // halt
        exit(EXIT_SUCCESS);
    };
}

static inline void start() {
    loadFunctions();

    for (ui8& v : memory)
        v = 0;
}
