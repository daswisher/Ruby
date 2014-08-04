#This file will include methods/functions as well as other methods for comparison

#Combined comparison
#Using <=> in between two values of the same type (i.e. string vs string or int vs int) will return which value is greater or if they're equal. If the first value is greater, 1 is returned; 0 is for the values are equal; -1 if the second value is greater than the first

number_1 = 2
number_2 = 31

puts number_1 <=> number_2

string_1 = "Some string"
string_2 = "Another string"

puts string_1 <=> string_2
