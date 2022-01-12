ActiveAdmin.register User do
  permit_params :username, :first_name, :last_name, :email, :password, :password_confirmation

  index do
    #selectable_column
    id_column
    column :username
    column :first_name
    column :last_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :go_to_cart do |a|
      link_to "Cart", admin_cart_path(a)
    end

    actions
  end

  filter :username
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  action_item :new_mobile do
    link_to "New Mobile", new_admin_mobile_path
  end

  form do |f|
    f.inputs do
      f.input :username
      f.input :first_name
      f.input :last_name
      f.input :email
      #f.input :area, as: :select, collection: Areas.all
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
