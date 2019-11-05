print("""Do you want to cross the road?" \nyes or no ?: """)


while True:

    option = str(input())

    if option == "no":
        print("Have a nice day! :)")
        break
    elif option == "yes":
        while True:
            color = str(input(
                "what color do you see at the traffic lights? Please select (red/yellow/green): "))
            if color == "red" or color == "yellow":
                print("Please stop")
                exit()
            elif color == "green":
                print("You can go")
                exit()
            else:
                continue
            break
    else:
        print("yes or no?:::")
        continue
