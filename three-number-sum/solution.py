def threeNumberSum(array, targetSum):
    array.sort()
    output = []

    for i, current in enumerate(array):
        if current > targetSum:
            break

        li = i + 1
        ri = len(array) - 1

        while li < ri:
            triplet = [current, array[li], array[ri]]
            currentSum = sum(triplet)

            if currentSum > targetSum:
                ri -= 1
            elif currentSum < targetSum:
                li += 1
            else:
                output.append(triplet)
                li += 1
    return output

print(threeNumberSum([12, 3, 1, 2, -6, 5, -8, 6], 0))