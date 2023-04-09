
number = -1  # Sets number less than 0 so the while loop works

while number<=0:
    # Ask for the number first to then determine what to do
    text = input('Number? ')
    number = float(text)
    if number < 1.0 and number>0:
        # If number is greater than 0 and less than 1 it enters here
        lower = number
        upper = 1.0
    if number<=0:
        # If number is negative or zero it enters here to prompt the user to input a positive non-zero number
        print("Please enter a positive, non-zero number.")
    else:
        # If it doesn't get caught above, it must mean number >=1 so it falls here.
        lower = 1.0
        upper = number

tolerance = -1   # Just like number above, set tolerance<0 so the while loop works
while tolerance<=0:
    # Same design as above, just less ifs because it is just checking positivity.
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
# Moved the print out of the while loop to only print the final answer
print(lower, upper)
