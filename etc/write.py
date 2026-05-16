
def write(path: str, data: bytes) -> None:
    with open(path, 'wb') as fp:
        fp.write(data)

def main() -> None:
    write("goal.bin", bytes([
        4, 0, 1, 0, 1,    # (4) mov reg0 (from) 1
        4, 0, 1, 1, 2,    # (4) mov reg1 (from) 2
    
        7, 0, 0, 0, 1, 0, # (7) add reg0 (and) reg1 (to) reg0
        # reg0 = 3
    ]))

if __name__ == '__main__':
    main()
