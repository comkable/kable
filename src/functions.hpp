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
#include <vector>
#include <functional>
#include <cstdio>
#include <array>
#include <bit>
#include <cstdint>

#define ARGS ui8* args, SizeType& i

using chars = std::vector<char>;
using Function = std::function<void(ui8*, SizeType&)>;
using location = ui32;
using Reg = ui8;

static constexpr ui8 sizeofReg = sizeof(Reg);
static constexpr ui32 FunctionSize = 4096;

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

static inline void* regRead(Reg reg) {
    switch (reg) {
    case 0x0: return &regByte1Number1;
    case 0x1: return &regByte1Number2;
    case 0x2: return &regByte1Number3;
    case 0x3: return &regByte1Number4;

    case 0x4: return &regByte2Number1;
    case 0x5: return &regByte2Number2;
    case 0x6: return &regByte2Number3;
    case 0x7: return &regByte2Number4;

    case 0x8: return &regByte4Number1;
    case 0x9: return &regByte4Number2;
    case 0xa: return &regByte4Number3;
    case 0xb: return &regByte4Number4;

    case 0xc: return &regByte8Number1;
    case 0xd: return &regByte8Number2;
    case 0xe: return &regByte8Number3;
    case 0xf: return &regByte8Number4;
    }
    return nullptr;
}

struct add {
    static void Ui8(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui8 res = readI8(static_cast<ui8*>(regRead(reg1))) + readI8(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui16(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui16 res = readI16(static_cast<ui8*>(regRead(reg1))) + readI16(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui32 res = readI32(static_cast<ui8*>(regRead(reg1))) + readI32(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui64 res = readI64(static_cast<ui8*>(regRead(reg1))) + readI64(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        float res = *reinterpret_cast<float*>(regRead(reg1)) + *reinterpret_cast<float*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        double res = *reinterpret_cast<double*>(regRead(reg1)) + *reinterpret_cast<double*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
};

struct sub {
    static void Ui8(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui8 res = readI8(static_cast<ui8*>(regRead(reg1))) - readI8(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui16(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui16 res = readI16(static_cast<ui8*>(regRead(reg1))) - readI16(static_cast<ui8*>(regRead(reg2))); // 修复：类型+括号

        regWrite(&res, reg3);

        i++;
    }
    static void Ui32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui32 res = readI32(static_cast<ui8*>(regRead(reg1))) - readI32(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui64 res = readI64(static_cast<ui8*>(regRead(reg1))) - readI64(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        float res = *reinterpret_cast<float*>(regRead(reg1)) - *reinterpret_cast<float*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        double res = *reinterpret_cast<double*>(regRead(reg1)) - *reinterpret_cast<double*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
};

struct mul {
    static void Ui8(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui8 res = readI8(static_cast<ui8*>(regRead(reg1))) * readI8(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui16(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui16 res = readI16(static_cast<ui8*>(regRead(reg1))) * readI16(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui32 res = readI32(static_cast<ui8*>(regRead(reg1))) * readI32(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui64 res = readI64(static_cast<ui8*>(regRead(reg1))) * readI64(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        float res = *reinterpret_cast<float*>(regRead(reg1)) * *reinterpret_cast<float*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        double res = *reinterpret_cast<double*>(regRead(reg1)) * *reinterpret_cast<double*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
};

struct div {
    static void Ui8(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui8 res = readI8(static_cast<ui8*>(regRead(reg1))) / readI8(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui16(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui16 res = readI16(static_cast<ui8*>(regRead(reg1))) / readI16(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui32 res = readI32(static_cast<ui8*>(regRead(reg1))) / readI32(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Ui64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        ui64 res = readI64(static_cast<ui8*>(regRead(reg1))) / readI64(static_cast<ui8*>(regRead(reg2)));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt32(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        float res = *reinterpret_cast<float*>(regRead(reg1)) / *reinterpret_cast<float*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
    static void Flt64(ARGS) {
        Reg reg1 = readReg(args);
        args += sizeofReg;

        Reg reg2 = readReg(args);
        args += sizeofReg;

        Reg reg3 = readReg(args);
        args += sizeofReg;

        double res = *reinterpret_cast<double*>(regRead(reg1)) / *reinterpret_cast<double*>(regRead(reg2));

        regWrite(&res, reg3);

        i++;
    }
};

struct mov {
    static void Mov(ARGS) {
        Reg reg = readReg(args);
        args += sizeofReg;
        // printf("%d\n", reg);
        regWrite(static_cast<const void*>(args), reg);
        i++;
    }
};

struct putchar {
    static void Putchar(ARGS) {
        Reg reg = readReg(args);
        char c = readI8(static_cast<ui8*>(regRead(reg)));
        ioChar(c);
        i++;
    }
};

struct goto_ {
    static void goto__(ARGS) {
        Reg reg = readReg(args);
        ui32 c = readI32(static_cast<ui8*>(regRead(reg)));
        i = c;
    }
};

// struct putstring {
//     static void Putstring(ARGS) {
//         Reg reg = readReg(args);
//         char c = readI8(static_cast<char*>(regRead(reg));
//         ioChar(c);
//     }
// };

static inline void cannotUse(ARGS) {
    ioString("This cannot be used.\n");
    exit(EXIT_FAILURE);
}

// TODO
std::array<Function, FunctionSize> functions;

void loadFunctions() {
    for (Function& function : functions)
        function = &cannotUse;
    
    functions[0x0] = &add::Ui8;
    functions[0x1] = &add::Ui16;
    functions[0x2] = &add::Ui32;
    functions[0x3] = &add::Ui64;
    functions[0x4] = &add::Flt32;
    functions[0x5] = &add::Flt64;

    functions[0x6] = &sub::Ui8;
    functions[0x7] = &sub::Ui16;
    functions[0x8] = &sub::Ui32;
    functions[0x9] = &sub::Ui64;
    functions[0xa] = &sub::Flt32;
    functions[0xb] = &sub::Flt64;

    functions[0xc] = &mul::Ui8;
    functions[0xd] = &mul::Ui16;
    functions[0xe] = &mul::Ui32;
    functions[0xf] = &mul::Ui64;
    functions[0x10] = &mul::Flt32;
    functions[0x11] = &mul::Flt64;

    functions[0x12] = &div::Ui8;
    functions[0x13] = &div::Ui16;
    functions[0x14] = &div::Ui32;
    functions[0x15] = &div::Ui64;
    functions[0x16] = &div::Flt32;
    functions[0x17] = &div::Flt64;

    functions[0x100] = &mov::Mov;
    functions[0x101] = &putchar::Putchar;
    functions[0x102] = &goto_::goto__;
    // functions[0x102] = &putstring::Putstring;
}
