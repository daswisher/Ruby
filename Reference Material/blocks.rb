#This is an example to show the difference between blocks and functions

def capitalize(string)
	puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("jim")
capitalize("bob")

["jim","bob"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"}
