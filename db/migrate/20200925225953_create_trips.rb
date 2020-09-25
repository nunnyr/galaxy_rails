class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :date
      t.integer :price
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :departing_planet_id
      t.integer :destination_planet_id

      t.timestamps
    end
  end
end
