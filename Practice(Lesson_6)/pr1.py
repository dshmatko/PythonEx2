def flat(floors, flat_needed, flats_per_floor):

    current_floor = 1
    current_porch = 1

    while flat_needed > floors*flats_per_floor*current_porch:
        current_porch += 1
        flat_needed = flat_needed - floors*flats_per_floor*(current_porch-1)
    while current_floor <= floors:
        if flat_needed <= current_floor * flats_per_floor:
            print("Porch - ", current_porch, "Floor",
                  current_floor, " appartment found")
            break
        current_floor += 1


flats_per_floor = int(input("Enter flats per floor:"))
floors = int(input("Enter floors:"))
flat_needed = int(input("What flat do you need,man?:"))

flat(floors, flat_needed, flats_per_floor)
