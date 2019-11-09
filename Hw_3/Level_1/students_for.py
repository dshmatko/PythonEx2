import random

students = ['Vasya', 'Kolya', 'Petya', 'Masha', 'Platon']

stud_dict = {}
for student in students:
    #    print(i, end=" ")
    stud_dict[student] = []
    for j in range(1, 6):
        stud_dict[student].append(random.randint(1, 5))


print(stud_dict)


for name in stud_dict:
    #    print(sum(stud_dict.get(name))/len(stud_dict.get(name)))
    print("Student {name} has average mark {mark}"
          .format(
              name=name,
              mark=sum(stud_dict.get(name))/len(stud_dict.get(name))))
