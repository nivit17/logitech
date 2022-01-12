class Api::AreasController < Api::NiveditaController
	def get_area
		@areas = params[:area]
		@areas.each do |a|
			# debugger
			@a = Area.create(country: a[:demo_country],state: a[:demo_state],city: a[:demo_city])
		end
		render json: @a
	end
	
end