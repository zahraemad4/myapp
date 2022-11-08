class Car < ApplicationRecord
    belongs_to :user
    #validates :carnumber, uniqueness: {scope: :user_id} this code make carnumber uniq for same user,not for all users
    validates_uniqueness_of :carnumber

    scope :by_car_color, -> (carnumber) {joins(:cars).where(cars:{carnumber:carnumber}) }

    before_validation :generate_number , on: :create
    private
    def generate_number
        carprivate ="A-#{SecureRandom.hex(6)}"
    end
  
end
