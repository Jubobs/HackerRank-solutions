# Link: https://www.hackerrank.com/challenges/python-power-mod-power

def readint():
    return int(raw_input())

if __name__ == "__main__":
    a = readint()
    b = readint()
    m = readint()
    print pow(a, b)
    print pow(a, b, m)
