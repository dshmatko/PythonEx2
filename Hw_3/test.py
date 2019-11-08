import sys

numbers = []
# Открываем файл с числами в контекстном менеджере
with open('numbers.txt', 'r') as f:
    # Методом read() читаем этот файл, с помощью split('\n') убираем переносы строк
    # на выходе получаем список строк формата ['3, 7, 20', ...]
    items = f.read().split('\n')
    # Итерируем полученные строки
    for i in items:
        # С помощью все той же split(',') убираем из строки ',' и разделяем строку, на выходе список ['3', '7', '20']
        # Итерируем его с помощью генератора и конвертируем каждое элемент в число с помощью int()
        # Полученный результат пихаем в общий список number. На выходе список списков
        numbers.append([int(n) for n in i.split(',')])

# Итерируем наш список списков, думаю тут все понятно
for nums in numbers:
    for num in range(1, nums[2]+1):
        if num % nums[0] == 0 and num % nums[1] == 0:
            print('FB', end=' ')
        elif num % nums[0] == 0:
            print('F', end=' ')
        elif num % nums[1] == 0:
            print('B', end=' ')
        else:
            print(num, end=' ')