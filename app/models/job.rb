class Job < ApplicationRecord
    belongs_to :user
    validates :company, uniqueness: {scope: :user_id}
end
