class Api::cartsController < Api::NiveditaController
	def get_cart
		@cart = params[:cart]
		@cart.each do |m|
		# debugger
			@c = Cart.create(user_id: c[:cart_id],username: c[:cart_username])
			
		end
		render json: @c
	end
	
end