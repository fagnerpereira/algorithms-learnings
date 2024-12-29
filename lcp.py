from typing import Literal


def lcp(a) -> None:
    """
    Finds the longest common prefix (LCP) in a list of strings.

    If no common prefix is found, returns an empty string.

    :param a: A list of strings to find the LCP in
    :type a: list[str]
    :return: The longest common prefix in the list of strings
    :rtype: str
    """
    prefixes: dict = {}

    for word in a:
        prefix: Literal[""] = ""
        for char in word:
            prefix += char
            prefixes.setdefault(prefix, 0)
            prefixes[prefix] += 1

    prefixesMax = max(prefixes.values())

    if prefixesMax < len(a):
        return ""

    result = max((k for k, v in prefixes.items() if v == prefixesMax), key=len)

    return result


lcp(["abc", "abcc", "abcd", "bcd"])
