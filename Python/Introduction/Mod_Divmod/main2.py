# Link: https://www.hackerrank.com/challenges/python-mod-divmod

from __future__ import division

def readint():
    return int(raw_input())

if __name__ == "__main__":
    a = readint()
    b = readint()
    print a // b
    print a % b
    print divmod(a, b)
