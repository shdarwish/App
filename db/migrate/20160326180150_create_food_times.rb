class CreateFoodTimes < ActiveRecord::Migration
  def change
    create_table :food_times do |t|

      t.timestamps null: false
    end
  end
end
