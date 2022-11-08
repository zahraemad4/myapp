class Book < ApplicationRecord
    belongs_to :user
    validates :year, uniqueness: {scope: :user_id}
    #scope :year_2021, ->{where(year:2022)}
    scope :by_year,->(year){where(year:year)}
    
end
