def file_stats(filename):
    data = open(filename, 'r')

    n_lines = 0
    n_words = 0
    n_chars = 0

    for line in data:
        n_lines += 1

        line_words = line.split()
        n_words += len(line_words)

        n_chars += len(line)
    data.close()
    return (n_lines, n_words, n_chars)


filename = input('File name? ')
print(filename, file_stats(filename))

