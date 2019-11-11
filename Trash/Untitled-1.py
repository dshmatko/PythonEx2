f = int(input())
b = int(input())
n = int(input())
for i in range(1, 1+n):
    if i % f == 0 and i % b == 0:
        print('FB')
    elif i % f == 0:
        print('F')
    elif i % b == 0:
        print('B')
    else:
        print(i)
    print(" ")
