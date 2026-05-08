
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

#if 1 // Defines
    #include <stddef.h> // For NULLs
    #include <stdint.h> // For types

    #ifdef __WIN32
        #define OS_WINDOWS
        #define SEP_S "\\"
        #define SEP_C '\\'

        #define LINESEP "\r\n"
    #else
        #ifdef __linux__
            #define OS_LINUX
        #else
            #define OS_MACOS
        #endif

        #define SEP_S "/"
        #define SEP_C '/'
        #define LINESEP "\n"
    #endif

    typedef uint8_t  ui8;
    typedef uint16_t ui16;
    typedef uint32_t ui32;
    typedef uint64_t ui64;

    typedef int8_t   i8;
    typedef int16_t  i16;
    typedef int32_t  i32;
    typedef int64_t  i64;

    typedef uint_fast8_t   ui8Fast;
    typedef uint_fast16_t  ui16Fast;
    typedef uint_fast32_t  ui32Fast;
    typedef uint_fast64_t  ui64Fast;

    typedef int_fast8_t    i8Fast;
    typedef int_fast16_t   i16Fast;
    typedef int_fast32_t   i32Fast;
    typedef int_fast64_t   i64Fast;

    typedef uint_least8_t  ui8Least;
    typedef uint_least16_t ui16Least;
    typedef uint_least32_t ui32Least;
    typedef uint_least64_t ui64Least;

    typedef int_least8_t   i8Least;
    typedef int_least16_t  i16Least;
    typedef int_least32_t  i32Least;
    typedef int_least64_t  i64Least;

    typedef ui32Least SizeType;

    static ui8 sizeOfSizeType = (ui8)sizeof(SizeType);
#endif

#if 1 // IO
    #include <stdio.h>

    static inline void ioChar(char c) {
        putchar(c);
    }
    static inline SizeType iogets(char* buf, SizeType bufSize) {
        if (!buf || bufSize == 0) return 0;

        if (fgets(buf, (int)bufSize, stdin) == NULL)
            return 0;

        SizeType len = 0;
        while (buf[len] != '\0' && buf[len] != '\n') len++;
        if (buf[len] == '\n')
            buf[len] = '\0';

        return len;
    }
    static inline SizeType ioString(const char* str) {
        const char* newStr = str;
        for (; *newStr != '\0'; newStr++)
            ioChar(*newStr);
        return (SizeType)(newStr - str);
    }
#endif
