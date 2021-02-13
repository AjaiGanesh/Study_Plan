puts("creating hashes")
hsh = {
    :id => 1,
    :message =>"greenbag boogie"
}
puts hsh[:id]
puts hsh[:message]

hsh.each do |key,value|
    puts "#{key} and #{value}"
end