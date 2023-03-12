from random import randint

def fizz_buzz(fizz: int, buzz: int, range_i: int):
    result = ''
    for i in range(1, range_i + 1):
        if (i % fizz == 0) and (i % buzz == 0):
            result += 'FB'
        elif i % fizz == 0:
            result += 'F'
        elif i % buzz == 0:
            result += 'B'
        else:
            result += str(i)
    return result

maximum = 10
fizz_values = [randint(1,9) for _ in range(maximum)]
buzz_values = [randint(1,9) for _ in range(maximum)]
reply = [fizz_buzz(fizz_values[i], buzz_values[i], maximum)
for i in range(maximum)]
print(reply)
