puts("while loop")
i = 1
while i <= 5
    puts i
    i+=1
end

puts("for loop")
for j in 1..4 do
    puts j
end

puts("do-while")
loop do
    puts i;

    if i == 7
        break;
    end
    i+=1
end

puts("until loop")
i =1
until i == 5
    puts i
    i+=1
end