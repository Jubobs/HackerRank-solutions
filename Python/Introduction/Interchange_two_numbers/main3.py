# Link: https://www.hackerrank.com/challenges/interchange-two-numbers

def readint():
    return int(input())

if __name__ == "__main__":
    a = readint()
    b = readint()
    (a, b) = (b, a)
    print(a, b, sep='\n', end='\n')
