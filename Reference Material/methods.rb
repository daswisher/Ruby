def userGreeting()
	puts "Hello. What's your name?"
	name = gets.chomp
	return "Hello "+name
end

userGreeting()
