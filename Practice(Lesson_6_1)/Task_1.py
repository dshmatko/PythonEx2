
all_students = {'Ivanov': [5, 5, 5, 4, 5], "Petrov": [
    2, 3, 4, 5, 3], "Sidorov": [5, 5, 3, 5, 5], "Novikov": [5, 2, 5, 5, 5, 5, 5]}

list1 = []
for i in all_students.keys():
    s = sum(all_students[i]) / len(all_students[i])
    list1.append(s)
list1.sort()
print("The worst - ", list1[0], min(all_students, key=all_students.get))
print("The best - ", list1[-1], max(all_students, key=all_students.get))
