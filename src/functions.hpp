
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

#include <vector>
#include <functional>

#define ARGS const char* args, SizeType& i

using chars = std::vector<char>;
using Function = std::function<void(const char*, SizeType&)>;
using Location = ui32;
using Reg = ui8;

static constexpr ui8 sizeofLocation = sizeof(Location);

#if 1 // regs
    ui8 regByte1Number1;
    ui8 regByte1Number2;
    ui8 regByte1Number3;
    ui8 regByte1Number4;

    ui16 regByte2Number1;
    ui16 regByte2Number2;
    ui16 regByte2Number3;
    ui16 regByte2Number4;

    ui32 regByte4Number1;
    ui32 regByte4Number2;
    ui32 regByte4Number3;
    ui32 regByte4Number4;

    ui64 regByte8Number1;
    ui64 regByte8Number2;
    ui64 regByte8Number3;
    ui64 regByte8Number4;
#endif

static inline void regWrite(void* data, Reg reg) {
    switch (reg) {
    case 0x0: regByte1Number1 = *static_cast<ui8*>(data); break;
    case 0x1: regByte1Number2 = *static_cast<ui8*>(data); break;
    case 0x2: regByte1Number3 = *static_cast<ui8*>(data); break;
    case 0x3: regByte1Number4 = *static_cast<ui8*>(data); break;

    case 0x4: regByte2Number1 = *static_cast<ui16*>(data); break;
    case 0x5: regByte2Number2 = *static_cast<ui16*>(data); break;
    case 0x6: regByte2Number3 = *static_cast<ui16*>(data); break;
    case 0x7: regByte2Number4 = *static_cast<ui16*>(data); break;

    case 0x8: regByte4Number1 = *static_cast<ui32*>(data); break;
    case 0x9: regByte4Number2 = *static_cast<ui32*>(data); break;
    case 0xa: regByte4Number3 = *static_cast<ui32*>(data); break;
    case 0xb: regByte4Number4 = *static_cast<ui32*>(data); break;

    case 0xc: regByte8Number1 = *static_cast<ui64*>(data); break;
    case 0xd: regByte8Number2 = *static_cast<ui64*>(data); break;
    case 0xe: regByte8Number3 = *static_cast<ui64*>(data); break;
    case 0xf: regByte8Number4 = *static_cast<ui64*>(data); break;
    }
}

static inline void* regRead(Reg reg) {
    switch (reg) {
    case 0x0: return &regByte1Number1;
    case 0x1: return &regByte1Number2;
    case 0x2: return &regByte1Number3;
    case 0x3: return &regByte4Number4;

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
    static inline void addUi8(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<ui8*>(regRead(loc1)) + *static_cast<ui8*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    static inline void addUi16(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<ui16*>(regRead(loc1)) + *static_cast<ui16*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    static inline void addUi32(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<ui32*>(regRead(loc1)) + *static_cast<ui32*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    static inline void addUi64(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<ui64*>(regRead(loc1)) + *static_cast<ui64*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    static inline void addFlt32(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<float32*>(regRead(loc1)) + *static_cast<float32*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    static inline void addFlt64(ARGS) {
        Reg loc1 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc2 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        Reg loc3 = *static_cast<const Reg*>(static_cast<const void*>(args));
        args += sizeofLocation;

        ui8 res = *static_cast<float64*>(regRead(loc1)) + *static_cast<float64*>(regRead(loc2));

        regWrite(&res, loc3);

        i++;
    }
    
};
// TODO
std::vector<Function> functions = {
    &add::addUi8,
    &add::addUi16,
    &add::addUi32,
    &add::addUi64,
    &add::addFlt32,
    &add::addFlt64
};
