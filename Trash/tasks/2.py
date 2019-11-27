a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

d = []


# for elements1 in a:
#     for elements2 in b:
#         if elements1 == elements2:
#             d.append(elements1)


d = list(set(a) & set(b))

print(d)
