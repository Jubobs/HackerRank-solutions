# Link: https://www.hackerrank.com/challenges/python-quest-1

# Note: Submit only the two lines of code; remove the last EOL.

for i in range(1, int(raw_input())):
    print i * sum(map(lambda k: 10 ** k, range(0, i)))
