from eight_puzzle import EightPuzzle
from nqueen import NQueensProblem
from search import *


def main():
    problem2 = EightPuzzle((1, 2, 3, 4, 5, 6, 7, 8, 0), (1, 2, 3, 4, 7, 6, 8, 5, 0))
    path = breadth_first_graph_search(problem2).solution()
    print(path, '\n')


if __name__ == "__main__":
    main()
