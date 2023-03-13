summa = 25000  #int(input("Введите сумму которую Вы хотите положить на депозит\n"))
months = 15  #int(input("На сколько месяцев положить Ваш депозит?\n"))
addition = 25000  #int(input("Каждый месяц какую сумму Вы сможете положить??\n"))
percents = 15
tax = 18
war_collect = 1.5
summa_months = 0
summa_total = 0
number_months = 0

print(f"Сумма денег положеных на депозит {months} месяцев, с начальным капиталом: {summa} UAH "
      f"и каждый месяц пополнение депозита {addition} UAH,всего вложено за весь период на депозит: {summa + (addition * (months - 1))} UAH")


clear_percents = percents - ((percents/100) * (tax + war_collect))
for months_i in range(1, months + 1):
    number_months = months_i
    summa_months += summa * (1 + (percents / 100)) ** (1 / (clear_percents / 1))
    summa_total = summa_months * (1 + (percents / 100)) ** (1 / (clear_percents / 1))
    print(f"Сума баланса  на: {number_months} месяц, становиться: {round(summa_total, 2)}")
total_summa_cl = summa_total - (summa + (addition * (months - 1)))


print(f'Сумма которыю Вы поличите в конце депозита: {round(summa_total, 2)} UAH')
print(f"Ваш доход с учетом налогов: {round(total_summa_cl, 2)} UAH")