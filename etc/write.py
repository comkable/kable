
# from sys import argv, exit

# def read(path: str) -> str:
#     with open(path, 'r', encoding='utf-8') as fp:
#         return fp.read()

# def usage() -> None:
#     print(f'Usgae: {argv[0]} <input> <output>')
#     exit(1)

# def compiler(asm: str) -> bytearray:
#     res: bytearray = bytearray()
    
#     return res

# def main() -> None:
#     if len(argv) < 3:
#         usage()
#     b: bytes = bytes(compiler(read(argv[1])))
#     write(argv[2], b)

def write(path: str, data: bytes) -> None:
    with open(path, 'wb') as fp:
        fp.write(data)

def main() -> None:
    write("goal.bin", bytes([
        4, 0, 1, 0, 1,    # (4) mov reg0 (from) 1
        4, 0, 1, 1, 2,    # (4) mov reg1 (from) 2
    
        5, 0, 0, 0, 1, 0, # (6) add reg0 (and) reg1 (to) reg0
        4, 0, 1, 1, 48,   # (4) mov reg1 (from) 48
        5, 0, 0, 0, 1, 0, # (6) add reg0 (and) reg1 (to) reg0,
        3, 1, 1, 0        # (3) puc (from) reg0
        # reg0 = 51
    ]))

if __name__ == '__main__':
    main()
