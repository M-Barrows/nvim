import sys


def new_func(x: int = 10):
    print(f"Hello Earth-{x}")
    x = list()


if __name__ == "__main__":
    new_func(x=sys.argv[1] if len(sys.argv) > 1 else 10)
