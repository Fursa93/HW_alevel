import gender as gender

name = ['Olga', 'Igor', 'Max', 'Nika']
age = [24, 35, 21, 29]
gender = ['W', 'M', 'M', 'W']
finish = zip (name,age,gender)


print (finish)

print (list(finish))


name = list(map(str, input().split()))
age = list(map(int, input().split()))
gender = list(map(str, input().split()))

result = zip(name,age,gender)
print(list(result))
