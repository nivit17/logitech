ActiveAdmin.register Cart do
  permit_params :user_id,:username
  index do
    id_column
    column :user_id, foreign_key: true
    column :username
    actions
  end

  # action_item :new_cart do
  # link_to "New cart", new_admin_cart_path
  # end

  # form do |f|
  #   f.inputs do
  #     f.input :country, as: :searchable_select, collection: Location.pluck(:country).uniq
  #     f.input :state, :label => 'State', :as => :searchable_select, :collection => f.object.state
  #     f.input :city,:label => 'City', :as => :select, :collection => [f.object.city]
  #   end
  #   f.actions
  # end
  controller do
    # def new
    #   @cart=Cart.new
    # end
    def edit
    end

    def show
    end

    def cart_params
      params.require(:cart).permit(:user_id, :username)
    end

    # def create
    #   @cart=Cart.new(cart_params)
    #   if @cart.save
    #     redirect_to admin_carts_path
    #   else
    #     render :new 
    #   end
    # end

    def update
      @cart=Cart.find(params[:id])
      #@cart.update_attribute(:cart,)
      if @cart.update_attributes(cart_params)
        redirect_to admin_carts_path
      else
       render :admin_cart
      end
    end

    def destroy
      @cart=Cart.find(params[:id])
      @cart.destroy
      redirect_to admin_carts_path
    end
  end
end
