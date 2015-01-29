require 'open-uri'
require 'json'

print 'Where would you like to travel today?'
location = gets.chomp.capitalize

file = open("http://api.openweathermap.org/data/2.5/weather?q=" + location)
contents = file.read


parsed = JSON.parse(contents)

weather = parsed["weather"]
weather_description = weather[0].fetch('description')

puts "The weather in #{ location } is : #{weather_description}"
