# Link: https://www.hackerrank.com/challenges/finding-the-percentage

def read_name_and_marks():
    l = input().split()
    return (l[0], list(map(float, l[1::])))

def avg(l):
    return sum(l) / len(l)

if __name__ == "__main__":
    N = int(input())
    avgs = {}
    for i in range(N):
        (name, marks) = read_name_and_marks()
        avgs[name] = avg(marks)
    name = input()
    print("%.2f" % avgs[name])
