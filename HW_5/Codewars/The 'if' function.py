def _if(bool, func1, func2):
    return func1() if bool else func2()


def func1():
    print("True")


def func2():
    print("False")

https://www.codewars.com/kata/54147087d5c2ebe4f1000805/solutions/python