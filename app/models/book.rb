class Book < ApplicationRecord
    belongs_to :user
    validates :year, uniqueness: {scope: :user_id}
end
