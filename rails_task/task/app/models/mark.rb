class Mark < ApplicationRecord
    belongs_to :student
    validates :marks, presence: true

    def self.search(search)  
        where("lower(students.first_name) LIKE :search OR lower(students.age) LIKE :search OR lower(students.phone) LIKE :search OR lower(students.email) LIKE :search OR lower(marks.marks) LIKE :search", search: "#{search.downcase}%").uniq   
    end 
    
    def ethone()
        self.marks = 123
        self.save
        self
        
    end
end
