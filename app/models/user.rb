class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :cart
  has_many :mobiles
  validates :username, :first_name,:last_name,presence: true 
  before_validation :upcase
  after_validation :downcase_fields
  
  def upcase
    if self.username != self.username.upcase
      errors.add(:username, "cannot accept smallcase")
    end
    if self.first_name != self.first_name.upcase
      errors.add(:first_name, "cannot accept smallcase")
    end
    if self.last_name != self.last_name.upcase
      errors.add(:last_name, "cannot accept smallcase")
    end
  end

  def downcase_fields
    self.username.downcase!
    self.first_name.downcase!
    self.last_name.downcase!
  end
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end


