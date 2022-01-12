class AddColumnToMobiles < ActiveRecord::Migration
  def change
    add_column :mobiles, :extra_name, :string
  end
end
