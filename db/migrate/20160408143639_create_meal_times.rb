class CreateMealTimes < ActiveRecord::Migration
  def change
    create_table :meal_times do |t|
      t.string :time

      t.timestamps null: false
    end
  end
end
