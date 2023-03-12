fizz = int (input('Ввести первое число:'))
buzz = int (input('Ввести второе число:'))
end = int (input('Ввести третье число:'))

for i in range (1, end+1):
    if i % fizz == 0 and i % buzz == 0:
        print('FB')
    elif i % fizz == 0:
        print('F')
    elif i % buzz == 0:
        print('B')
    else:
        print(i)