ActiveAdmin.register Extra do
  permit_params :mobile_id,:name,:username
  index do
    id_column
    column :mobile_id, foreign_key: true
    column :name
    column :username, foreign_key: true
    actions
  end
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
 
