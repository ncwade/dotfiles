"""
Python template
"""
import argparse


def main():
    """Main entrypoint."""

    parser = argparse.ArgumentParser()
    parser.add_argument("square", type=int,
                        help="display a square of a given number")
    parser.add_argument("-v", "--verbosity", type=int, choices=[0, 1, 2],
                        help="increase output verbosity")
    args = parser.parse_args()
    answer = args.square**2
    if args.verbosity == 2:
        print("the square of %d equals %d" % (args.square, answer))
    elif args.verbosity == 1:
        print("%d^2 == %d" % (args.square, answer))
    else:
        print(answer)

if __name__ == "__main__":
    main()
