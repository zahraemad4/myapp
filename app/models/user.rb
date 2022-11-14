class User < ApplicationRecord   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,  :rememberable, :validatable
    #validates :email, format:{with:URI::MailTo::EMAIL_REGEXP}
    #validates :username, length: {minimum:3},allow_blank:false
    #validates :name, presence: true, uniqueness:{case_sensitive:false} 
    validates :identifier, presence: true 
    has_one :profile
    has_many :books
    has_many :cars
    has_many :jobs
    has_one :house

    scope :by_book_year, -> (year) {joins(:books).where(books:{year:year}) }

    before_validation :generate_id , on: :create
    private
    def generate_id
        self.identifier ="abc-#{Date.today.year}-#{SecureRandom.hex(5)}"
    end
    


    def user_name
        username
    end
     def book_title 
        username + title
     end

end