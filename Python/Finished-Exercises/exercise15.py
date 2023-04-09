# I predict that bar would equal [7,9,10,0]
# I was only off by the last number 0 not being in the list in the end. [7,9,10]

foo = [4, 6, 2, 7, 3, 1, 9, 4, 2, 7, 4, 6, 0, 2]
bar = foo[3:12:3]
bar[2] += foo[4]
foo[0] = bar[1]
print(bar)

