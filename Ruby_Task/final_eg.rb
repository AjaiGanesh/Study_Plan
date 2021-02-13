class PerformanceMontier
    require 'net/http'
  
    def initialize()
      @res = []
    end
  
    def run(limit = 0)
        limit.times do |i|
          time_before = Time.now
          Net::HTTP.get_response(URI( "http://numbersapi.com/"))
          @res << { date_time: Time.now, res_time: Time.now - time_before }
        end
        output @res 
    end
  
    def range_filter(start_time = Time.now, end_time = Time.now - 10) ## default diff is 10 sec      
        output @res.sel     ect{ |t| start_time.to_i <= t[:date_time].to_i and t[:date_time].to_i <= end_time.to_i }
    end
  
    def output(res = nil)
      p "---------- Output ---------"
      p res
      p "----------------------------"
    end
    
end

  t = PerformanceMontier.new
  t.run(10)
  t.run(10)
  t.range_filter(Time.now, Time.now)
  t.range_filter(Time.now- 100000, Time.now )