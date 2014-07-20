require 'open-uri' #This imports the modules for http interactions
kittens = open("http://placekitten.com/")
puts kittens.status #Prints the request status
body = kittens.read[559, 441]
puts body
