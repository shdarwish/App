class CreateFoodRestaurants < ActiveRecord::Migration
  def change
    create_table :food_restaurants do |t|
      t.integer :restaurant_id
      t.integer :food_id

      t.timestamps null: false
    end
  end
end
