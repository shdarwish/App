class CreateFoodTimes < ActiveRecord::Migration
  def change
    create_table :food_times do |t|
      t.integer :food_id
      t.integer :meal_time_id

      t.timestamps null: false
    end
  end
end
