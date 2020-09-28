class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image
      t.string :facts
      t.integer :occupancy
      t.string :sights
      t.boolean :travel_allowed

      t.timestamps
    end
  end
end
