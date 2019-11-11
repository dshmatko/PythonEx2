import sys
filename = sys.argv[1]
f = open(filename, 'r')

phrases = [", yeah!", ", this is crazy, I tell ya.", ", can U believe this?",
           ", eh?", ", aw yea.", ", yo.", "? No way!", ". Awesome!"]
for line in f:
    print(line, end="")
    li = line.split(".")
    print(li)
    for sentence in li:
        sentence +=
