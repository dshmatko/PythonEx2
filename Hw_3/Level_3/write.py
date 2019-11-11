import sys
filename = sys.argv[1]
f = open(filename, 'r')
o = open('result.txt', 'w')
for line in f:
    o.write(line)
    counters = line.split()
    counters = list(map(int, counters))
    for i in range(1, counters[2]+1):
        if i % counters[0] == 0:
            o.write("F")
        if i % counters[1] == 0:
            o.write("B")
        if not i % counters[0] == 0 and i % counters[1]:
            o.write(str(i))
        o.write(" ")
    o.write("\n")
f.close()
o.close()
