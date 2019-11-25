import sys
import re

filename = sys.argv[1]

with open(filename, 'r') as f:
    # ans = sum(int(line) for line in f if line.strip(";").isnumeric())
    # print(ans)
    for line in f:
        line = line.split(";")
        print(line)
        index1 = list(map(int, line[0].split()))
        print(index1)
