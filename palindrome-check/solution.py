def isPalindrome(string):
    li = 0
    ri = len(string) - 1

    while li < ri:
        if string[li] != string[ri]:
            return False
        li += 1
        ri -= 1
    return True