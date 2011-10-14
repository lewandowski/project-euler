require 'rubygems'
require 'restfulie'

puts "==================================="
response = Restfulie.at('http://localhost:3006/countries/1').accepts("application/xml").get
#resource = response.resource
#puts country
#puts "Country name is #{resource.country.name}"    
puts response.body
puts response.code    
puts "==================================="