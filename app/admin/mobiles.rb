ActiveAdmin.register Mobile do
	permit_params :name, :description,:model,:image,:extra_name
	index do
	  #selectable_column
	  id_column
	  column :name
	  column :description
	  column :model
	  column :image
	  column :extra_name
	  actions
  end

  filter :name
  filter :model


  form do |f|
	  f.inputs do
	    f.input :name
	    f.input :description
	    f.input :model
	    f.input :image
	    # f.input :extra_name
	  end
    f.actions
		panel 'Extras' do
		 	table_for mobile.extras do
		   	column :mobile_id
		   	column :name
		   	column :username
		 	end
		end

   	# panel "Extras" do |a|
   	# 	a.row :mobile_id 
   		# 
   	# end
	end



  controller do
  	def new
  		@mobile = Mobile.new
  	end

  	def edit
  	end

  	def show
  	end

  	def mobile_params
    	params.require(:mobile).permit(:name,:description,:model, :image ,:extra_name)
  	end

  	def create
  		@mobile = Mobile.new(mobile_params) 
  		# do |c|
    #   	c.extra_name = current_user.username
    #   end
    	if @mobile.save
      	redirect_to admin_mobiles_path
    	else
      	render :new
    	end
  	end

  	def update
  		@mobile=Mobile.find(params[:id])
      if @mobile.update_attributes(mobile_params)
       	redirect_to admin_mobiles_path
      else
       	render :admin_mobile
      end
  	end

  	def destroy
  		@mobile=Mobile.find(params[:id])
  		@mobile.destroy
     	flash[:notice] = "Record deleted successfully"
      redirect_to admin_mobiles_path
  	end

		# def destroy
	 #    @mobile = Mobile.find(params[:id])
		# 	byebug
		# 	@mobile.destroy!
	 #    redirect_to mobiles_path, :notice => "Your mobile has been deleted"
		# end
  end
end
