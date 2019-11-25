

all_students = {'Ivanov': [1, 2, 3, 4, 5], "Petrov": [
    2, 3, 4, 5, 3], "Sidorov": [3, 4, 5, 5, 3], "Novikov": [4, 5, 5, 5, 5]}

min_1 = 5
min_2 = ""
max_1 = 0
max_2 = ""

for i in all_students.keys():
    if sum(all_students[i])/len(all_students[i]) >= max_1:
        max_1 = sum(all_students[i])/len(all_students[i])
        max_2 = i
    if sum(all_students[i])/len(all_students[i]) <= min_1:
        min_1 = sum(all_students[i])/len(all_students[i])
        min_2 = i
print("Bad- ", min_2, " - ", min_1)
print("Best-", max_2, " - ", max_1)

# print(i, "-", sum(i.values())/len(i.values()))
