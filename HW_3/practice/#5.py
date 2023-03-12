def money (cash: int) -> None:
    price = (10,20,50,100,200,500,1000)

    if cash % 10 != 0:
        print('Укажите суму кратную 10')
    else:
        for i in price:
            n = cash / i
            if int(n) > 0:
                if int(n) > 10:
                    n = 10
                cash -= int(n) * i
                print(f'{i}: {int(n)} штук')
money(2450)
