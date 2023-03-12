def down(string):
    return string.lower()


def up(string):
    return string.upper()


list_str = "We love Python".split()
print(list(map(down, list_str)))
print(list(map(up, list_str)))