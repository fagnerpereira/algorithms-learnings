def squareNum(n):
    squares_count = 0
    current = n

    while current > 0:
        square = int(pow(current, 0.5))
        current = current - pow(square, 2)
        squares_count += 1
    print(squares_count)
    return squares_count

# squareNum(9)
squareNum(12)
# squareNum(63)

# 3 ** 2