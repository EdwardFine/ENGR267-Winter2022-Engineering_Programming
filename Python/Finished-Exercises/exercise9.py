
number = -1

while number<=0:
    text = input('Number? ')
    number = float(text)
    if number < 1.0 and number>0:
        lower = number
        upper = 1.0
    if number<=0:
        print("Please enter a positive, non-zero number.")
    else:
        lower = 1.0
        upper = number

tolerance = -1
while tolerance<=0:
    tolerance = float(input("What is your tolerance? "))
    if tolerance <= 0:
        print("Please input a positive, non-zero tolerance.")
uncertainty = upper - lower

while uncertainty > tolerance :
    middle = (lower + upper)/2
    
    if middle**2 < number:
        lower = middle
    else:
        upper = middle
    uncertainty = upper - lower
print(lower, upper)