print("""Do you want to cross the road?" \nyes or no ?: """)


option = str(input())


if option == "no":
    print("Have a nice day! :)")

elif option == "yes":
    print("what color do you see at the traffic lights? Please select (red/yellow/green): ")
    color = str(input())
    if color == "red" or color == "yellow":
        print("Please stop")
    elif color == "green":
        print("You can go")
    else:
        print("Please select (red/yellow/green): ")
else:
    print("yes or no?")
