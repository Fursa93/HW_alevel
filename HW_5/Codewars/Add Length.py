def add_length(str_):
    answer = []
    for word in str_.split():
        answer.append(word + ' ' + str(len(word)))
    return answer

https://www.codewars.com/kata/559d2284b5bb6799e9000047
