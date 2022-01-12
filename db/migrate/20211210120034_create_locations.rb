class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :city
      t.timestamps null: false
    end
    csv_text = File.read('./db/migrate/locations.csv')
    csv = CSV.parse(csv_text, {headers: true})
    csv.each do |row|
        Location.create(country: row[0], state: row[1], city: row[2])
    end
  end
end
