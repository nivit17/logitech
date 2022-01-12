class Api::MobilesController < Api::NiveditaController
	def get_mobile
		@mob = params[:mobile]
		@mob.each do |m|
		# debugger
			@m = Mobile.create(name: m[:demo_name],description: m[:demo_description],model: m[:demo_description], image: m[:demo_image])
			
		end
		render json: @m
	end
	
end