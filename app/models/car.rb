class Car < ApplicationRecord
    belongs_to :user
    #validates :carnumber, uniqueness: {scope: :user_id} this code make carnumber uniq for same user,not for all users
    validates_uniqueness_of :carnumber
end
