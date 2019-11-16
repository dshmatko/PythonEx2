def func1(l):
    print(l)
    s = l.upper()
    print(s)


def func2(d):
    print(d)
    q = d.lower()
    print(q)


low = input(str("input low:"))
up = input(str("input up:"))

func1(str(low))
func2(str(up))
