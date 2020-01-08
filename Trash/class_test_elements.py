class Elements:
    def iron_method(self, t0, ci):
        if ci == "C":
            if t0 < self.t1:
                return('Solid state')
            if t0 > self.t2:
                return('Par')
            else:
                return("normal")
        elif ci == "K":
            if t0 < self.t1-273:
                return('Solid state')
            if t0 > self.t2-273:
                return('Par')
            else:
                return("normal")

    def converter(self, t0, ci):
        if ci not in ["K", "F"]:
            raise ValueError
        if ci == "K":
            result = t0-273
        if ci == "F":
            result = t0*9/5+32
        return result

    def state(self, t, ci):
        temp = self.converter(t, ci)


#test = Iron()
#print(test.iron_method(2500, "K"))
#print(test.iron_method(1500, "K"))
#print(test.iron_method(2500, "C"))
#print(test.iron_method(1300, "C"))
#print(test.converter(1300, "K"))
#print(test.converter(1300, "F"))
#print(test.converter(1300, "F"))
#print(test.state(1800, "F"))
class Iron(Elements):

    t1 = 1538
    t2 = 2862


iron = Iron()
print(iron.converter(1300, "K"))

    def __init__(self, t1, t2):
			self.t0 = 12
