class Mobile < ActiveRecord::Base
	belongs_to :carts
	has_many :extras
	belongs_to :users

	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :name, presence: true
  validates :model, presence: true
  before_create :update_name_to_upcase


  def update_name_to_upcase
  	if self.name.present?
		self.name.capitalize
	else
	  self.name.upcase
	end
  end

end
