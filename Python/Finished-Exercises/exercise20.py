import utils

filename = input('File name? ')
(file_lines, file_words, file_chars) = utils.file_stats(filename)
print(filename, file_lines, file_words, file_chars)

