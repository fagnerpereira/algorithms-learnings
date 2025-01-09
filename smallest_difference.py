def smallestDifference(arrayOne, arrayTwo):
    arrayOne.sort()
    arrayTwo.sort()
    i = j = 0
    smallest = float('inf')
    output = []

    while i < len(arrayOne) and j < len(arrayTwo):
        n1, n2 = arrayOne[i], arrayTwo[j]

        if n1 == n2:
            return [n1, n2]

        diff = abs(n1 - n2)

        if diff < smallest:
            smallest = diff
            output = [n1, n2]

        if n1 < n2:
            i += 1
        else:
            j += 1

    return output

smallestDifference(
    [-1, 5, 10, 20, 28, 3],
    [26, 134, 135, 15, 17]
)