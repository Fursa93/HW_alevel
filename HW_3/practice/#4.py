def money(cash: int) -> None:
    price = (1000, 500, 200, 100, 50, 20, 10)

    if cash % 10 != 0:
        print('Укажите суму кратную 10')
    else:
        for i in price:
            n = cash / i
            if int(n) > 0:
                cash -= int(n) * i
                print(f'{i}: {int(n)} штук')
money(10520)