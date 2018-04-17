class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.integer :address_number
      t.integer :street_direction
      t.string :street_name
      t.string :street_type

      t.timestamps
    end
  end
end
