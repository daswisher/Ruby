puts "Enter text to be searched: "
text = gets.chomp
words = text.split(" ")
puts "Enter a word you want redacted: "
redact = gets.chomp
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end