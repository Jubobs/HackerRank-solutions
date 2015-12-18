# Link: https://www.hackerrank.com/challenges/finding-the-percentage

def read_name_and_marks():
    l = raw_input().split()
    return (l[0], map(float, l[1::]))

def avg(l):
    return sum(l) / len(l)

if __name__ == "__main__":
    N = int(raw_input())
    avgs = {}
    for i in xrange(N):
        (name, marks) = read_name_and_marks()
        avgs[name] = avg(marks)
    name = raw_input()
    print "%.2f" % avgs[name]
