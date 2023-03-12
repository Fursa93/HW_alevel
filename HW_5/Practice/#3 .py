english = {}
english_text = open('HW practice 5', 'r')
text_string = english_text.read().lower()

for word in text_string.split(' '):
    count = english.get(word, 0)
    english[word] = count + 1

for words in english.items():
    print(*words)


