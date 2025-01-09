def lcp(a):
    if len(a) == 0:
        return ""
    if len(a) == 1:
        return a[0]

    min_prefix = min(a, key=len)

    for i in range(len(min_prefix)):
        current_char = a[0][i]

        for string in a[1:]:
            if string[i] != current_char:
                return string[:i]
    return min_prefix




lcp(["somehow", "somewhat", "something", "some"])
# lcp(["abc", "abcc", "abcd", "bcd"])
# lcp(["maximum", "minimum"])