num_fizz = int(input("Enter 1-st number_fizz: "))
num_buzz = int(input("Enter 2-nd number_fizz: "))
num_three = int(input("Enter 3rd bumber: "))

b = 1

while b < (num_three + 1):
    if b % num_fizz == 0:
        print("F", end="")
    if b % num_buzz == 0:
        print("B", end="")
    if not b % num_fizz == 0 and b % num_buzz:
        print(b, end="")
    print("", end=" ")
    b += 1
print()
