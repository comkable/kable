
def write(path: str, data: bytes) -> None:
    with open(path, 'wb') as fp:
        fp.write(data)

def main() -> None:
    write("goal.bin", bytes([
        6, 24, 0, 0, 0, 0, 1,
        6, 24, 0, 0, 0, 1, 2,
        
        7, 0, 0, 0, 0, 0, 1, 0,
    ]))

if __name__ == '__main__':
    main()
