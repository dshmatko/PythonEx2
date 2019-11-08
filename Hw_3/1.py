import sys
filename = sys.argv[1]
# далее открываем файл на чтение (опция 'r')
f = open(filename, 'r')  # в файле теперь file descriptor
for line in f:  # для каждой строки в файле
    print(line)
    counters = line.split()
    print(counters)
    counters = list(map(int, counters))


for counter in counters:
    for i in range(1, counter[2]+1):
        if i % counter[0] == 0:
            print("F", end="")
        if i % counter[1] == 0:
            print("B", end="")
        if not i % counter[0] == 0 and i % counter[1]:
            print(i, end="")
        print("", end=" ")

print()
