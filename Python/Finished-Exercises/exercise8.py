# ifthenelse2 prediction: This will print beta because cat < bat is false.

if 17 < 15+9 and 'cat' < 'bat' and 'green' < 'groan':
    print('alpha')
else:
    print('beta')

# ifthenelse3 prediction: This will print 3*number +1 because 15%2!=0

number = 15

if number % 2 == 0 :
    number = number / 2
else:
    number = 3*number + 1

print(number)

# ifthenelse4 prediction: This will print Goodbye world because the default state is true.

if False :
    print('Hello, world!')
else:
    print('Goodbye, world!')

