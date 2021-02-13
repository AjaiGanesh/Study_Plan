puts("Accessing string elements")
msg = "hello everyone this is mikee ross"

puts msg["everyone"]
puts msg[0]
puts msg[0..2]

puts("multiline strings")
puts "hello
 everyone
  this 
  is 
  harvey 
  spector"

puts %/
hello 
everyone
this 
is 
aj
/ 

puts <<STRING
howdy
people
STRING

puts("variable interpolation")

batman = "harvey spector"
robin = "mike ross"

puts "#{batman} and #{robin} saves the city"

puts("concatenation of strings")

str = "mike is"+"a good"+"friend"
puts str
str = "mike is" "a good" "friend"
puts str
str = "mike is".concat("a good").concat("friend")
puts str
str = "mike is"<<"a good"<<"friend"
puts str

puts("freezing a string")
str = "hello donna"
str <<"and rachel"
puts str
str.freeze
# str <<"how u doin"

puts("comparing strings")
puts "mike"=="mike"
puts "50".eql?"50"
puts "ross".casecmp"spector"

