val = 20
puts("if condition")
if val > 18 
    puts "eligible"
end

puts("if-else condition")
if val > 18
    puts "eligible"
else
    puts "not eligible"
end

puts("if-else ladder")
val = 75
if val > 50
    puts "passed"
elsif val>=60 && val<=75
    puts "1st class"
elsif val>75 && val<=100
    puts "distinction"
else
    puts "not eligible"
end

puts("switch condition")
case val
    when 0...50
        puts "failed"
    when 50...75
        puts "passed"
    when 75..100
        puts "distinction"
    else "invalid value"
end
