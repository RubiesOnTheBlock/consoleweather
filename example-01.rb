require 'open-uri'
require 'json'

puts 'Hello World!'

print 'Where would you like to travel today?'
location = gets.chomp.capitalize

print "Location is #{ location }.\n"


#file = open("http://lemonde.fr")
file = open("http://api.openweathermap.org/data/2.5/weather?q=" + location)
contents = file.read
#puts contents.inspect

parsed = JSON.parse(contents)

weather = parsed["weather"]
puts weather[0].fetch('description')
