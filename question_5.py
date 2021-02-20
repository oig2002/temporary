# with Python3.6
word = input("Type a word here: ")
total_sum = 0

for character in word:
    print(character, " = ", ord(character))
    decimal = ord(character)
    total_sum = total_sum + decimal

print(total_sum)

