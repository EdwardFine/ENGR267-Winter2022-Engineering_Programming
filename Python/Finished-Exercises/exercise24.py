ages = [('Joe',9), ('Samantha',45), ('Methuselah',969)]
formatting ='{:10} {:3}'
for (name,age) in ages:
    print(formatting.format(name,age))

