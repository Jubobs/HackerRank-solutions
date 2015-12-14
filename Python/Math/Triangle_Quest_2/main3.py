# Link: https://www.hackerrank.com/challenges/triangle-quest-2

# Note: Submit only the two lines of code; remove the last EOL.

for i in range(1, int(input()) + 1):
    print(sum(map(lambda k: 10 ** k, range(0, i))) ** 2)
