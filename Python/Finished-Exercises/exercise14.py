list1 = [0.3, 0.0, 0.4]
list2 = [0.2, 0.5, 0.6]
number = [0,1,2]
sum = 0.0

for index in number:
    difference = list1[index] - list2[index]
    sum += difference**2

print(sum)

