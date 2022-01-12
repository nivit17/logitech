class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|

      t.string :name
      t.string :description
      t.string :model
      t.attachment :image
      t.timestamps null: false
    end
  end
end
