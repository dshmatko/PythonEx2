import sys


filename = sys.argv[1]

with open(filename, 'r') as f:
    for line in f:
        line = line.split(";")
        print(line)
        index1 = list(map(int, line[0].split()))
        index2 = list(map(int, line[1].split()))
        if sum(index1) // len(index1) == index2[0] and sum(index1) % len(index1) == index2[1]:
            print(True)
        else:
            print(False)
