import sys
filename = sys.argv[1]
# далее открываем файл на чтение (опция 'r')
f = open(filename, 'r')  # в файле теперь file descriptor
for line in f:  # для каждой строки в файле
    print(line, end="")
    counters = line.split()
    counters = list(map(int, counters))
    print(counters)
    for i in range(1, counters[2]+1):
        if i % counters[0] == 0:
            print("F", end="")
        if i % counters[1] == 0:
            print("B", end="")
        if not i % counters[0] == 0 and i % counters[1]:
            print(i, end="")
        print("", end=" ")

    print()
