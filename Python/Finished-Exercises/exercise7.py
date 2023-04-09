# While 2 Prediction: This will run until doubling number is greater than 1024

number = 1

while number < 1024 :
    print(number)
    number *=2

# While 3 Prediction: This won't run because number isn't > 1024

number = 1

while number > 1024 :
    print(number)
    number *=2

# While 4 Prediction: This will be a never ending loop because while number >1024, and the loop makes the number larger, therefore it wont end.

    #number = 1025

    #while number > 1024 :
    #    print(number)
    #    number *=2

# While 5 Prediction: While the uncertainty is bigger than the tolerance, uncertainty will get halfed until it is less than tolerance.

tolerance = 1.0e-15
uncertainty = 2.0

while uncertainty > tolerance :
    uncertainty /= 2.0
    print(uncertainty)

print('Final uncertainty: ', uncertainty)

# While 6 Prediction: The code will loop and print user text until the user inputs nothing.

text = 'OK'

while text != '' :
    text = input('Give me some text: ')
    print(text)

