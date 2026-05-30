
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

using chars = std::vector<ui8>;
using Function = void(*)(ui8*, SizeType&);
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

static inline ui8 readI8(const ui8* data) noexcept {
    return *data;
}

static inline ui16 readI16(const ui8* data) noexcept {
    ui16 val;
    std::memcpy(&val, data, sizeof(val));
    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap16(val);
    return val;
}

static inline ui32 readI32(const ui8* data) noexcept {
    ui32 val;
    std::memcpy(&val, data, sizeof(val));
    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap32(val);
    return val;
}

static inline ui64 readI64(const ui8* data) noexcept {
    ui64 val;
    std::memcpy(&val, data, sizeof(val));
    if constexpr (std::endian::native == std::endian::big)
        val = __builtin_bswap64(val);
    return val;
}

static inline float readFlt32(const ui8* data) noexcept {
    float val;
    std::memcpy(&val, data, sizeof(val));
    if constexpr (std::endian::native == std::endian::big) {
        ui32 u = __builtin_bswap32(std::bit_cast<ui32>(val));
        val = std::bit_cast<float>(u);
    }
    return val;
}

static inline double readFlt64(const ui8* data) noexcept {
    double val;
    std::memcpy(&val, data, sizeof(val));
    if constexpr (std::endian::native == std::endian::big) {
        ui64 u = __builtin_bswap64(std::bit_cast<ui64>(val));
        val = std::bit_cast<double>(u);
    }
    return val;
}

#define readReg(d) readI8(d)

static inline void regWrite(const void* data, Reg reg) noexcept {
    const ui8* src = static_cast<const ui8*>(data);

    switch (reg) {
        case 0x0: regByte1Number1 = *src; break;
        case 0x1: regByte1Number2 = *src; break;
        case 0x2: regByte1Number3 = *src; break;
        case 0x3: regByte1Number4 = *src; break;

        case 0x4: regByte2Number1 = *reinterpret_cast<const uint16_t*>(src); break;
        case 0x5: regByte2Number2 = *reinterpret_cast<const uint16_t*>(src); break;
        case 0x6: regByte2Number3 = *reinterpret_cast<const uint16_t*>(src); break;
        case 0x7: regByte2Number4 = *reinterpret_cast<const uint16_t*>(src); break;

        case 0x8: regByte4Number1 = *reinterpret_cast<const uint32_t*>(src); break;
        case 0x9: regByte4Number2 = *reinterpret_cast<const uint32_t*>(src); break;
        case 0xa: regByte4Number3 = *reinterpret_cast<const uint32_t*>(src); break;
        case 0xb: regByte4Number4 = *reinterpret_cast<const uint32_t*>(src); break;

        case 0xc: regByte8Number1 = *reinterpret_cast<const uint64_t*>(src); break;
        case 0xd: regByte8Number2 = *reinterpret_cast<const uint64_t*>(src); break;
        case 0xe: regByte8Number3 = *reinterpret_cast<const uint64_t*>(src); break;
        case 0xf: regByte8Number4 = *reinterpret_cast<const uint64_t*>(src); break;

        default: printf("???: regWrite %d\n", (int)reg); exit(EXIT_FAILURE);
    }
}

static inline void regWriteI64(ui64 data, Reg reg) noexcept {
    switch (reg) {
        case 0x0: regByte1Number1 = data; break;
        case 0x1: regByte1Number2 = data; break;
        case 0x2: regByte1Number3 = data; break;
        case 0x3: regByte1Number4 = data; break;

        case 0x4: regByte2Number1 = data; break;
        case 0x5: regByte2Number2 = data; break;
        case 0x6: regByte2Number3 = data; break;
        case 0x7: regByte2Number4 = data; break;

        case 0x8: regByte4Number1 = data; break;
        case 0x9: regByte4Number2 = data; break;
        case 0xa: regByte4Number3 = data; break;
        case 0xb: regByte4Number4 = data; break;

        case 0xc: regByte8Number1 = data; break;
        case 0xd: regByte8Number2 = data; break;
        case 0xe: regByte8Number3 = data; break;
        case 0xf: regByte8Number4 = data; break;

        default: printf("???: regWriteI64 %d\n", (int)reg); exit(EXIT_FAILURE);
    }
}

void* regTable[0x10] = {
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

static inline void* regRead(Reg reg) noexcept {
    return regTable[reg]; // no error
}

static inline ui64 regReadI64(Reg reg) noexcept {
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

static inline void readMemoryToReg(ui64 location, Reg reg) noexcept {
    regWrite(memory.data() + location, reg);
}

static inline void write(ui8* buffer, ui64 data, ui8 type) noexcept {
    switch (type) {
        case 0x0: 
            *buffer = static_cast<ui8>(data); 
            break;
        case 0x1: 
            *reinterpret_cast<ui16*>(buffer) = static_cast<ui16>(data); 
            break;
        case 0x2: 
            *reinterpret_cast<ui32*>(buffer) = static_cast<ui32>(data); 
            break;
        case 0x3: 
            *reinterpret_cast<ui64*>(buffer) = data; 
            break;
        default: 
            printf("???: write\n"); 
            exit(EXIT_FAILURE);
    }
}

static inline void writeMemory(ui64 location, ui64 data, ui8 type) noexcept {
    write(memory.data() + location, data, type);
}

template <typename T>
static inline T readMemory(ui64 location, ui8 type) noexcept {
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
static T readLE(const void* ptr) noexcept {
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
static T readRegVal(Reg r) noexcept {
    return readLE<T>(regRead(r));
}

#if defined(TIME) || defined(TTIME)
    #include <chrono>
#endif

#ifdef TIME
    static SizeType total = 0;
#endif

template <typename Op, typename T>
static inline void binaryOp(ARGS) noexcept {
#ifdef TIME
    auto start = std::chrono::high_resolution_clock::now();
#endif

    T res = Op{}(
                    readRegVal<T>(readReg(args)),
                    readRegVal<T>(readReg(args + 1))
                );

#ifdef TIME
    auto end = std::chrono::high_resolution_clock::now();
    auto duration_ns = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start);
    total += duration_ns.count();
#endif

    regWrite(&res, readReg(args + 2));
    
}

template <typename Op, typename T, typename T2>
static inline void binaryOp2(ARGS) noexcept {
    Reg r1 = readReg(args);
    Reg r2 = readReg(args + 1);
    Reg r3 = readReg(args + 2);

#ifdef TIME
    auto start = std::chrono::high_resolution_clock::now();
#endif

    T a = readRegVal<T>(r1);
    T b = readRegVal<T>(r2);
    T2 res = Op{}(a, b);

#ifdef TIME
    auto end = std::chrono::high_resolution_clock::now();
    auto duration_ns = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start);
    total += duration_ns.count();
#endif

    regWrite(&res, r3);
    
}

template <typename Op, typename T>
static inline void unaryOp(ARGS) noexcept {
    Reg r1 = readReg(args);
    Reg r2 = readReg(args + 1);

    T a = readRegVal<T>(r1);
    T res = Op{}(a);

    regWrite(&res, r2);
    
}

struct Add { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::plus<T>, T>(args, i); } };
struct Sub { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::minus<T>, T>(args, i); } };
struct Mul { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::multiplies<T>, T>(args, i); } };
struct Div { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::divides<T>, T>(args, i); } };
struct Big { template <typename T> static void Run(ARGS) noexcept { binaryOp2<std::greater<T>, T, ui8>(args, i); } };
struct Small { template <typename T> static void Run(ARGS) noexcept { binaryOp2<std::less<T>, T, ui8>(args, i); } };
struct Equal { template <typename T> static void Run(ARGS) noexcept { binaryOp2<std::equal_to<T>, T, ui8>(args, i); } };

struct And { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::bit_and<T>, T>(args, i); } };
struct Or { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::bit_or<T>, T>(args, i); } };
struct Not { template <typename T> static void Run(ARGS) noexcept { unaryOp<std::bit_not<T>, T>(args, i); } };
struct Xor { template <typename T> static void Run(ARGS) noexcept { binaryOp<std::bit_xor<T>, T>(args, i); } };

struct LogicalAnd  { template<typename T> static void Run(ARGS) noexcept { binaryOp<std::logical_and<T>, T>(args, i); } };
struct LogicalOr   { template<typename T> static void Run(ARGS) noexcept { binaryOp<std::logical_or<T>, T>(args, i); } };
struct LogicalNot  { template<typename T> static void Run(ARGS) noexcept { unaryOp<std::logical_not<T>, T>(args, i); } };

struct mov {
    static void Mov(ARGS) noexcept {
        Reg reg = readReg(args++);
        regWrite(args, reg);
    }
};

struct putchar {
    static void Putchar(ARGS) noexcept {
        Reg reg = readReg(args);
        char c = readRegVal<ui8>(reg);
        ioChar(c);
    }
};

struct goto_ {
    static void goto__(ARGS) noexcept {
        ui32 c = readI32(args);
        i = c - 1;
    }
};

struct gotoif {
    static void gotoif_(ARGS) noexcept {
        Reg reg = readReg(args);

        i = regReadI64(reg) ? readI32(args + 1) - 1 : i;
    }
};

struct store {
    static void Store(ARGS) noexcept {
        Reg r = readReg(args++);
        ui32 location = readI32(args);

        writeMemory(location, regReadI64(r), r >> 2);
    }
};

struct load {
    static void Load(ARGS) noexcept {
        Reg reg = readReg(args++);
        ui32 location = readI32(args);

        readMemoryToReg(location, reg);
    }
};

struct storeus {
    static void Storeus(ARGS) noexcept {
        Reg reg = readReg(args++);
        Reg reg2 = readReg(args);

        writeMemory(readRegVal<ui32>(reg2), regReadI64(reg), reg2 >> 2);
    }
};

struct loadus {
    static void Loadus(ARGS) noexcept {
        Reg reg = readReg(args++);
        Reg reg2 = readReg(args);

        readMemoryToReg(readRegVal<ui32>(reg2), reg);
    }
};

struct gotous {
    static inline void Gotous(ARGS) noexcept {
        Reg reg = readReg(args);

        i = regReadI64(reg) - 1;
    }
};

struct gotoifus {
    static inline void Gotoifus(ARGS) noexcept {
        Reg reg = readReg(args++);
        Reg reg2 = readReg(args);

        i = regReadI64(reg2) ? regReadI64(reg) - 1 : i;
    }
};

struct CORS {
    static inline void CopyReturnsStack(ARGS) noexcept {
        Reg reg = readReg(args);

        returns.data()[returnsPtr] = regReadI64(reg);
    }
};

struct PORS {
    static inline void PopReturnsStack(ARGS) noexcept {
        if (returnsPtr)
            returnsPtr--;
    }
};

struct PURS {
    static inline void PushReturnsStack(ARGS) noexcept {
        Reg reg = readReg(args);

        returns[returnsPtr] = regReadI64(reg);
    }
};

struct inc {
    static inline void Inc(ARGS) noexcept {
        Reg reg = readReg(args);
        regWriteI64(regReadI64(readReg(args)) + 1, reg);
    }
};

template<typename T>
struct TypeName { static std::string name(); };

template<> std::string TypeName<uint8_t>::name()  { return "ui8"; }
template<> std::string TypeName<uint16_t>::name() { return "ui16"; }
template<> std::string TypeName<uint32_t>::name() { return "ui32"; }
template<> std::string TypeName<uint64_t>::name() { return "ui64"; }
template<> std::string TypeName<float>::name()    { return "flt32"; }
template<> std::string TypeName<double>::name()   { return "flt64"; }

struct TT { // turn the type
    template<typename T, typename T2>
    static inline void Run(ARGS) noexcept {
        Reg reg = readReg(args++);
        Reg reg2 = readReg(args);
        T2 val = static_cast<T2>(readRegVal<T>(reg));

        // std::cout << TypeName<T>::name() << std::endl << TypeName<T2>::name() << std::endl;
        // std::cout << val << std::endl;

        regWrite(&val, reg2);
    }
};

static inline void cannotUse(ARGS) noexcept {
    ioString("This cannot be used.\n");
    exit(EXIT_FAILURE);
}

Function functions[FunctionSize];

static inline void loadFunctions() noexcept {
    using flt64 = double;

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
    functions[number++] = &name::Run<flt64>;     \
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

#define CREATE_TT_WITH_(type)                    \
do {                                             \
    functions[number++] = &TT::Run<type, ui8>;   \
    functions[number++] = &TT::Run<type, ui16>;  \
    functions[number++] = &TT::Run<type, ui32>;  \
    functions[number++] = &TT::Run<type, ui64>;  \
    functions[number++] = &TT::Run<type, float>; \
    functions[number++] = &TT::Run<type, flt64>; \
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
        // 83
        CREATE_TT_WITH_(ui8);
        // 89
        CREATE_TT_WITH_(ui16);
        // 95
        CREATE_TT_WITH_(ui32);
        // 101
        CREATE_TT_WITH_(ui64);
        // 107
        CREATE_TT_WITH_(float);
        // 113
        CREATE_TT_WITH_(flt64);
        // 119
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

    functions[0x200] = &inc::Inc;

    functions[FunctionSize-1] = [](ARGS) -> void { // halt
        exit(EXIT_SUCCESS);
    };
}

static inline void start() noexcept {
    loadFunctions();

    for (ui8& v : memory)
        v = 0;
}
