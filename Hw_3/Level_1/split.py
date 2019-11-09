import sys

f = open(sys.argv[1], 'r')  # в файле теперь file descriptor

for line in f:  # для каждой строки в файле
    li = [int(x) for x in line.split()]
    print(li)

f.close()  # закрытие файла
