import math


def square(x):
    a = ()
    b = x*4
    c = x*x
    d = x * math.sqrt(2)
    a = (b, c, d)
    return(a)


p, s, d = square(4)
print(p)
print(s)
print(d)
