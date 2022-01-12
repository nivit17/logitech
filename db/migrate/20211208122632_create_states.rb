class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :states_id   
      t.string :name  
      t.integer :country_id  
      t.string :country_code      
      t.string :state_code
      t.timestamps null: false
    end
    csv_text = File.read('./db/migrate/states.csv')
    csv = CSV.parse(csv_text, {headers: true})
    csv.each do |row|
        State.create(states_id: row[0], name: row[1], country_id: row[2], country_code: row[3], state_code: row[4])
    end
  end
end
