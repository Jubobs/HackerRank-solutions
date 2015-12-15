# Link: https://www.hackerrank.com/challenges/polar-coordinates

from cmath import phase

def fun(s):
    z = complex(s)
    return (abs(z), phase(z))

if __name__ == '__main__':
    (rho, phi) = fun(raw_input())
    print rho
    print phi
