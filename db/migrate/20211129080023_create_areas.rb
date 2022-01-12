class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :country
      t.string :state
      t.string :city
      t.timestamps null: false
      
    end
    csv_text = File.read('./db/migrate/area.csv')
    csv = CSV.parse(csv_text, {headers: true})
    csv.each do |row|
        Area.create(country: row[0], state: row[1], city: row[2])
    end
  end
end
