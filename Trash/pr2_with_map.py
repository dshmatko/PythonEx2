
def f(x):
    if number(x):
        return x*x
    else:
        return x


def number(my_number):
    for i in range(2, my_number):
        if my_number % i == 0:
            return False
    return True


nums = [1, 2, 3, 34, 17, 29, 6, 12, 3, 4, 67, 98, 32, 5, 65, 7, 5, 4]

[print(f(num), end=" ") for num in nums]
print()
