file = open ('file2023', 'a+')

import sys
file2023 = sys.argv [0]
f = open (file2023, 'r')
for line in f:
    print (line)
f.close()