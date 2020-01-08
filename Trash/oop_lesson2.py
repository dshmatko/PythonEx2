class Employee:
    def __init__(self, full_name, phone, salary_day):
        self.full_name = full_name
        self.phone = phone
        self.salary_day = salary_day

    def work(self):
        return "I come to the office"

    def check_salary(self, days):
        return self.salary_day*days

    def __lt__(self, other):
        return self.salary_day < other.salary_day

    def __gt__(self, other):
        return self.salary_day > other.salary_day

    def __eq__(self, other):
        return self.salary_day == other.salary_day


class Recruiter(Employee):
    def __str__(self):
        return "Recruiter "+self.full_name

    def work(self):
        #     return ("I come to office and start hiring")
        a = super().work()
        return a[0:-1] + (" and start hiring")


class Programmer(Employee):
    def __str__(self):
        return "Programmer "+self.full_name

    def work(self):
        #     return ("I come to office and start coding")
        a = super().work()
        return a[0:-1] + (" and start coding")


employee = Employee("Dmitriy", "33333", 300)
print(employee.check_salary(3))

a = Programmer("Dmitriy", "33333", 300)
print(a)
print(a.work())


b = Recruiter("Sasha", "33333", 200)
print(b)
print(b.work())

if b < a:
    print("OK")
