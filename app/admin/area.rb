ActiveAdmin.register Area do
  permit_params :country, :state, :city
  index do
    id_column
    column :country
    column :state
    column :city
    actions
  end

  # action_item :new_area do
  # link_to "New Area", new_admin_area_path
  # end

  collection_action :state_from_country, method: :get do
    # binding.pry
    @state= Location.where(country: params[:country]).pluck(:state).uniq
    render :json => @state
  end

  collection_action :city_from_state, method: :get do
    @city= Location.where(state: params[:state]).pluck(:city).uniq
    render :json => @city
  end


  form do |f|
    f.inputs do
      f.input :country, as: :searchable_select, collection: Location.pluck(:country).uniq
      f.input :state, :label => 'State', :as => :searchable_select, :collection => [f.object.state]
      f.input :city,:label => 'City', :as => :select, :collection => [f.object.city]
    end
    f.actions
  end
  controller do
    def new
      @area=Area.new
    end
    def edit
    end

    def show
    end

    def area_params
      params.require(:area).permit(:country,:state,:city)
    end

    def create
      @area=Area.new(area_params)
      if @area.save
        redirect_to admin_areas_path
      else
        render :new 
      end
    end

    def update
      @area=Area.find(params[:id])
      #@area.update_attribute(:area,)
      if @area.update_attributes(area_params)
        redirect_to admin_areas_path
      else
       render :admin_area
      end
    end

    def destroy
      @area=Area.find(params[:id])
      @area.destroy
      redirect_to admin_areas_path
    end
  end
end
