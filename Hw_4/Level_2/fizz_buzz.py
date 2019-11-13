from random import sample
import sys
import random


def fizz_buzz(fizz, buzz, number):
    for i in range(1, number+1):
        if i % fizz == 0:
            write_file.write("F")
        if i % buzz == 0:
            write_file.write("B")
        if not i % fizz == 0 and i % buzz:
            write_file.write(str(i))
        write_file.write(" ")
    write_file.write("\n")


filename = sys.argv[1]

file_with_numbers = open(filename, 'w')
write_file = open('result.txt', 'w')


for _ in range(20):
    list = sample(range(1, 99), 3)
    fizz_buzz_numbers = ' '.join(map(str, list))
    file_with_numbers.write(fizz_buzz_numbers)
    file_with_numbers.write("\n")

file_with_numbers.close()


file_with_numbers = open(filename, 'r')
for line in file_with_numbers:
    li = line.split()
    fizz_buzz(int(li[0]), int(li[1]), int(li[2]))

file_with_numbers.close()
write_file.close()
