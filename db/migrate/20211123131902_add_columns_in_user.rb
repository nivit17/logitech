class AddColumnsInUser < ActiveRecord::Migration
  def change

    add_column :users, :first_name,:string,null: false, default: "" if !column_exists? :users, :first_name
    add_column :users, :last_name, :string,null: false, default: "" if !column_exists? :users, :last_name
  end
end

