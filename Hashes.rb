#The following examples function based upon key:value pairs

#Literal notation hash function
my_hash = { "name" => "Mike", "age" => 20, "hungry?" => false}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

my_hash.each { |x, y| puts "#{x}: #{y}" }