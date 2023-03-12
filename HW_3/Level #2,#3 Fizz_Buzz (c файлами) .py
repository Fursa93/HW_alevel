def FIZZ_BUZZ(FIZZ: int, BUZZ: int, range_i: int):
    result = ''
    for i in range(1, range_i + 1):
        if (i % FIZZ == 0) and (i % BUZZ == 0):
            result += 'FB'
        elif i % FIZZ == 0:
            result += 'F'
        elif i % BUZZ == 0:
            result += 'B'
        else:
            result += str(i)
    return result


file = open('./file.txt', 'r')
file2 = open('./file2.txt', 'w')

for p in file:
    FIZZ, BUZZ, i = p.split()
    file2.write(FIZZ_BUZZ(int(FIZZ), int(BUZZ), int(i)))
    file2.write('\n')

file.close()
file2.close()
