def isMonotonic(array):
    if len(array) < 2:
        return True

    increasing = True
    decreasing = True

    for i in range(1, len(array)):
        last, current = array[i - 1], array[i]

        if current > last:
            decreasing = False
        elif current < last:
            increasing = False

    return decreasing or increasing

print(
    isMonotonic([-1, -5, -10, -1100, -1100, -1101, -1102, -9001]),
    isMonotonic([-1, -5, -10, -1100, -900, -1101, -1102, -9001]),
    isMonotonic([1, 2, 0]),
    isMonotonic([1, 1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 8, 9, 10, 11])
)