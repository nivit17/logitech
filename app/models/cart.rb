class Cart < ActiveRecord::Base
	belongs_to :users , foreign_key: :user_id
	validates_uniqueness_of :user_id, :scope => [:cart_id]
end
