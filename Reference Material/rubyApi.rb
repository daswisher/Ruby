require 'open-uri' #This imports the modules for http interactions

#It is possible to parse in xml with ruby using the following require line
#require 'rexml/document'
#To read in the xml file, we would use:
#file = File.open("file.txt")
#doc = REXML::Document.new file
#file.close

#Using JSON is similar to the way we work with XML
#require 'json'
#pets = File.open("pets.txt","r")
#doc = ""
#pets.each do |line|
#	doc << line
#end
#pets.close
#puts JSON.parse(doc)

kittens = open("http://placekitten.com/")
puts kittens.status #Prints the request status
body = kittens.read[559, 441]
puts body
