class User < ActiveRecord::Base
  
  has_many :orders
  has_many :events, :through => :orders
  
  before_save { self.name = name.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: {case_sensitive: false }
    
    has_secure_password
    validates :password, length: { minimum: 6 }
    
    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    
end
