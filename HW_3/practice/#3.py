import sys
file2023 = sys.argv[0]
f = open(file2023, 'r')
for line in f:

    print(line [::-1])
f.close()