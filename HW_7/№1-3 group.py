#Задача №1
def find_numd(num):
    count = num - 1
    avgfloors = 5
    numb_flats = 4

    H_search = count // (numb_flats * avgfloors)
    F_search = (count - (numb_flats*avgfloors)*(H_search)) // numb_flats

    return f"під'їзд: {H_search + 1}, поверх: {F_search + 1}, квартира: {num}"

search = 61

print(find_numd(search))


#Задача №2
n=int(input("enter the no of rows :"))
k = n//2
for i in range(k+1):
    if i == 0:
        print(" "*(k-i), '*', sep='', end='\n')
    else:
        j = list(range(1,n-1,2))[i-1]
        print(" "*(k-i), '*', "*"*j, '*', sep='', end='\n')
for i in range(k-1,-1,-1):
    if i > 0:
        j = list(range(n-k+(n-9)//2,-1,-2))[k-i-1]
        print(" "*(k-i), '*', "*"*j, '*', sep='', end='\n')
    else:
        print(" "*(k-i), '*', sep='', end='\n')


#Задача №3
def sum(num, answ, rest):
    f = []
    for item in num:
        f.append(float(item))
    answ = int(answ)
    rest = int(rest)
    sum_n = 0
    for i in range(len(f)):
        sum_n = sum_n + float(f[i])
    if sum_n/len(f) == answ and sum_n%len(f) == rest:
        return True
    else:
        return False


# file = open("numbers.txt", "r")
# numb = []
# for x in file:
#     numb, answ, rest = x.split(";")


numb = [2, 4, 5]
answ = 3
rest = 2


print(sum(numb,answ,rest))
