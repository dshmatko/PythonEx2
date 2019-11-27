def arithmetic(x, y, command):
    if command == "+":
        return (x+y)
    elif command == "-":
        return (x-y)
    elif command == "*":
        return (x*y)
    elif command == "/":
        return (x/y)
    else:
        print("Command not found")


a = int(input("Enter first number: "))
b = int(input("Eneter second number: "))
c = str(input("What operation do you need ? + , - , * , / :"))


print(arithmetic(a, b, c))
