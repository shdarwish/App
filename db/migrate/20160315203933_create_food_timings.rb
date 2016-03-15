class CreateFoodTimings < ActiveRecord::Migration
  def change
    create_table :food_timings do |t|
      t.string :timing

      t.timestamps null: false
    end
  end
end
