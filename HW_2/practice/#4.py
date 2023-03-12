dddd = {
    1: '1',
    2: '10',
    3: '100',
    4: '1000',
    5: '10000',
    6: '100000',
    7: '1000000',
}


def numrs(number: str) -> None:
    num_len = len(number)
    for num in number:
        print(f'{num} – разрядность {dddd[num_len]}')
        print(f'{num} x {dddd[num_len]}')
        num_len -= 1

numrs('12334')
