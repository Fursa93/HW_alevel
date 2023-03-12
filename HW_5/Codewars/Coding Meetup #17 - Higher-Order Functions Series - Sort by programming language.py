def sort_by_language(arr):
    language_firs_name = sorted(arr, key=lambda item: (item["language"], item["first_name"]))
    return language_firs_name
print(sort_by_language)

https://www.codewars.com/kata/583ea278c68d96a5fd000abd