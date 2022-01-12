class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :countries_id
      t.string :name
      t.string :iso3
      t.string :iso2
      t.integer :numeric_code
      t.timestamps null: false
    end
    csv_text = File.read('./db/migrate/countries.csv')
    csv = CSV.parse(csv_text, {headers: true})
    csv.each do |row|
        Country.create(countries_id: row[0], name: row[1], iso3: row[2], iso2: row[3], numeric_code: row[4])
    end
  end
end
