class CreateFoodRestaurants < ActiveRecord::Migration
  def change
    create_table :food_restaurants do |t|

      t.timestamps null: false
    end
  end
end
