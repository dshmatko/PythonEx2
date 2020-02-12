from models.candidate import Candidate
from models.programmer import Programmer
from models.recruiter import Recruiter
from models.vacancy import Vacancy
from models.employee import Employee

P1 = Programmer("Julien Limeul", "ejull@gmail.com", "03044040440", 300)
P1.tech_stack = ["Perl", "C++", "Java"]
P2 = Programmer("Anatoliy Petrov", "anatolik@ya.ru", "0533333", 50)
P2.tech_stack.append("PHP")

R1 = Recruiter("Anna Fateeva", "anya@gmail.com", "06603030330303", 215)

C1 = Candidate("Alexandr Pushkin", "pushka@gmail.com",
               ["JS", "Python", "Ruby"], ["Ruby"], 134)
C2 = Candidate("Harry Potter", "hp@hw.com",
               ["C++", "C#"], ["С"], 12)
C3 = Candidate("Oleksii kozakevych", "sap3r@gmail.com",
               ["Lua", "Python"], ["Php"], 10)

V1 = Vacancy("Junior Java Programmer", "Lua", 5)
V2 = Vacancy("Senior OpenStack Dev", "Python", 19)


print(P1.prop)
print(P2.chk_workdays())
print(Employee.chk_workdays())
