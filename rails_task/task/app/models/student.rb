class Student < ApplicationRecord
    has_many :Marks, dependent: :destroy

    validates :first_name, :last_name, :age, :phone, :email, presence: true
end
