
def up(line):
    line = str(line)
    return line.upper()


def down(line):
    line = str(line)
    return line.lower()


line = input("input line : ")
print(line)


lines = line.split(".")
lines = list(map(up, lines))
print(lines)
lines = list(map(down, lines))
print(lines)
