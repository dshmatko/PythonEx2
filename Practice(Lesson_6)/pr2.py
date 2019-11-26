your_number = int(input("Enter your number:"))


if your_number > 0 and your_number % 2:
    for i in range(1, your_number+1, 2):
        print(' '*(your_number-i), '* '*(i))
    for i in range(your_number-2, 0, -2):
        print(' '*(your_number-i), '* '*(i))
