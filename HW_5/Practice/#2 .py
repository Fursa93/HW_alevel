def sq(numb1):
    return numb1 ** 2


def is_simple(numb2):
    help_numb = int(numb2 ** 0.5)+1
    for i in range(2, help_numb):
        if not numb2 % i:
            return False
    return True


answ = list(filter(is_simple, range(51)))
print(answ)
print(list(map(sq, answ)))
