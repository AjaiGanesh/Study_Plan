def raise_exception     
    begin
        puts 'I am before the raise.'     
        raise 'oops! An error has occured'     
        puts 'I am after the raise'
    rescue Exception => e  
        puts e.message   
        puts e.backtrace.inspect    
    end     
    puts 'After the begin block.'     
end     
  raise_exception


  def promptAndGet(prompt)   
    print prompt   
    res = readline.chomp   
    throw :quitRequested if res == "!"   
    return res   
 end   
   
 catch :quitRequested do   
    name = promptAndGet("Name: ")   
    age = promptAndGet("Occupation: ")   
    # ..   
    # process information   
 end   
 promptAndGet("Name:")  

