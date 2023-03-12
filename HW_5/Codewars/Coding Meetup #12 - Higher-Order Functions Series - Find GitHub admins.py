def find_admin(lst, lang):
    res = []
    for d in lst:
        if d ['githubAdmin'] == 'yes' and d['language'] == lang:
             res.append(d)
    return res

https://www.codewars.com/kata/582dace555a1f4d859000058/train/python
