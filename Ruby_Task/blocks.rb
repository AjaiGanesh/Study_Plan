4.times do|i|
    puts i    
end

puts("yield")

def calling
    puts "hello"
    yield
    puts "world"
    yield
end

calling{puts "everyone"}

BEGIN {   
    puts "code block is being loaded"   
  }   
    
END {   
  puts "code block has been loaded"   
}   
puts "This is the code block"

def met(&block)   
  puts "This is method"   
  block.call   
end   
met { puts "This is &block example" }

class Novel   
    attr_accessor :pages, :category   
    
    def initialize   
      yield(self)   
    end   
end   
    
  novel = Novel.new do |n|   
    n.pages = 564   
    n.category = "thriller"   
  end   
    
  puts "I am reading a #{novel.category} novel which has #{novel.pages} pages."   