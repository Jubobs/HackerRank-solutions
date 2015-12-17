# Link: https://www.hackerrank.com/challenges/python-print

from __future__ import print_function

if __name__ == "__main__":
    N = int(input())
    for i in range(1, N + 1):
        print(i, sep='', end='')
    print()
