#There are methods that can be called on arrays in order to sort the values by number (ascending values) or by letter (sorts strings/chars from a-z)

my_array = [2, 16, 314, 4, 1 , 8, 92]

puts my_array.sort!

my_string_array = ["These","are","unsorted","strings"]

puts my_string_array.sort!


#There is the comparison that can be used to determine if something is less than numerically or alphabetically. If the first item is less than, it returns 0; Equal returns 0; Greater than the second item returns 1

number_1 = 2
number_2 = 31

number_1<=>number_2 #This yields -1

#It is possible to sort things in reverse order using the comparison operator and a loop
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |firstBook, secondBoook|
	secondBook <=> firstBook
end
