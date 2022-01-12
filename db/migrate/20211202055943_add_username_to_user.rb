class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username,:string,null: false, default: "" if !column_exists? :users, :username
  end
end
