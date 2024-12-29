def findIndex(s, c):
    # for i, char in enumerate(s):
    #     if char == c:
    #         return i
    # return -1

    return s.find(c)


print(findIndex("hello", "l"))
