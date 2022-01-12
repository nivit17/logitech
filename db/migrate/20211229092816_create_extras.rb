class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :name
      t.references :mobile, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
