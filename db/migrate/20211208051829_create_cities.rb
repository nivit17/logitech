class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :city_pid
      t.string :name
      t.integer :state_id  
      t.string :state_code 
      t.integer :country_id
      t.string :country_code
      t.timestamps null: false
    end
    csv_text = File.read('./db/migrate/cities.csv')
    csv = CSV.parse(csv_text, {headers: true})
    csv.each do |row|
        City.create(id: row[0],name: row[1], state_id: row[2], state_code: row[3], country_id: row[4], country_code: row[5])
    end

  end
end
