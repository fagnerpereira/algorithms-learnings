def moveElementToEnd(array, toMove):
    i = 0
    j = len(array) - 1

    while i < j:
        left, right = array[i], array[j]

        if left == toMove:
            if right != toMove:
                array[i], array[j] = right, left
                i += 1
            j -= 1
        else:
            i += 1

    return array

moveElementToEnd([2, 1, 2, 2, 2, 3, 4, 2], 2)