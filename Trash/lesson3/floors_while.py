students = ['Vasya', 'Kolya', 'Petya', 'Masha', 'Platon']

flats_per_floor = 8
floors = 24
flat_needed = int(input())
current_floor = 1

while current_floor <= floors:
    if flat_needed <= current_floor * flats_per_floor:
        print("Floor", current_floor, " appartment found")
        break
    current_floor += 1


#### print("Floor {}, appartment found!".format(current_floor))
