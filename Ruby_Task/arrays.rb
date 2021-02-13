puts("creating a array")
arr1 = ["hey you whatsapp", 1,true]
puts arr1
arr1 = Array.new(10)
puts arr1.length

puts("accessing a array")
arr1 = ["hey you whatsapp", 1,true, 1]
puts arr1[2]
puts arr1[0]
puts arr1[0..2]

puts arr1.at(0)
puts arr1.first
puts arr1.last
puts arr1.take(2)
puts arr1.drop(1)

puts ("adding elements to an array")
puts arr1.push("how u doin")
puts arr1 <<"winter is coming"
puts arr1.unshift("cool")
puts arr1.insert(3,"hello you")

puts("removing element in a array")
puts arr1.pop
puts arr1.shift
puts arr1.delete(true)
puts arr1.uniq
