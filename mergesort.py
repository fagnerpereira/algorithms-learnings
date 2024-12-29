def mergeSort(array):
    if len(array) <= 1:
        return array
    middle = len(array) // 2

    return merge(mergeSort(array[:middle]), mergeSort(array[middle:]))


def merge(left, right):
    sorted = []
    li = ri = 0

    while li < len(left) and ri < len(right):
        leftVal, rightVal = left[li], right[ri]

        if leftVal > rightVal:
            sorted.append(rightVal)
            ri += 1
        else:
            sorted.append(leftVal)
            li += 1

    sorted.extend(left[li:])
    sorted.extend(right[ri:])

    return sorted


print(mergeSort([8, 5, 2, 9, 5, 6, 3]))
