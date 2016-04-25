class CreateMyMeals < ActiveRecord::Migration
  def change
    create_table :my_meals do |t|
      t.references :food, index: true, foreign_key: true
      t.belongs_to :meal, index: true, foreign_key: true
      t.integer :quantity, default: 1

      t.timestamps null: false
    end
  end
end
