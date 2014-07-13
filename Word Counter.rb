puts "Enter text to be analyzed: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each{ |word| frequencies[word] += 1}
frequencies = frequencies.sort_by do |word, frequency|
    frequency
end
frequencies.reverse!
frequencies = frequencies.sort_by do |word, frequency|
    puts word + " " + frequency.to_s
end