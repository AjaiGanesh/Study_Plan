File.open("about.txt", "w+") do |f|
    f.write("hello thsi is harvey god damn spector\n")
    f<<"with his side kick mike ross\n"
end


File.foreach("about.txt").with_index do |line, line_num|
    puts "#{line_num}: #{line}"
 end