num_fizz = int(input("Enter 1-st number_fizz: "))
num_buzz = int(input("Enter 2-nd number_fizz: "))
num_three = int(input("Enter 3rd bumber: "))

counters = range(1, (num_three + 1))

for counter in counters:
    if counter % num_fizz == 0:
        print("F", end="")
    if counter % num_buzz == 0:
        print("B", end="")
    if not counter % num_fizz == 0 and counter % num_buzz:
        print(counter, end="")
    print("", end=" ")

print()
