class CreateZones < ActiveRecord::Migration[5.1]
  def change
    create_table :zones do |t|
      t.integer :row_id
      t.string :status
      t.integer :zone
      t. string :odd_even
      t.integer :address_range_low
      t.integer :address_range_high
      t.string :street_direction
      t.string :street_name
      t.string :street_type
      t.string :second_street_direction
      t.string :buffer
      t.integer :ward_low
      t.integer :ward_low
      
      t.timestamps
    end
  end
end
