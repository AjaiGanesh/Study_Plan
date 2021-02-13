module Suits
    def name_partner
        puts "spector and litt"
    end

    def senior_partner
        puts "mike and alex"
    end

end

class Zane
    include Suits 
end

val = Zane.new
val.senior_partner
val.name_partner

module Peaarson
    def Peaarson.name_partner
        puts "spector and litt"
    end

    def Peaarson.senior_partner
        puts "mike and alex"
    end

end