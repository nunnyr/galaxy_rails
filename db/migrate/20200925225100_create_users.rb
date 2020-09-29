class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :pronouns
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.boolean :friendly_neighbor

      t.timestamps
    end
  end
end
