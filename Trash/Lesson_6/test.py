k = int(input("Enter the number of rows"))
for i in range(1, k+1):
    print(' '*(k-i), '* '*(i))
for i in range(k-1, -1, -1):
    print(' '*(k-i), '* '*(i))
