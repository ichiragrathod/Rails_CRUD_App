class Employee < ApplicationRecord
    validates :name, presence: true, length:{minimum:2, maximum:100}
    validates :city, presence: true,length:{minimum:2, maximum:50}
    validates :tech, presence: true,length:{minimum:2, maximum:50}
end