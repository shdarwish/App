class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :type_id
      t.integer :restaurant_id
      t.integer :food_timing_id

      t.timestamps null: false
    end
  end
end
