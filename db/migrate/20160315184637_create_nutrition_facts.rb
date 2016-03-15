class CreateNutritionFacts < ActiveRecord::Migration
  def change
    create_table :nutrition_facts do |t|
      t.integer :food_id
      t.integer :servingSize
      t.integer :calories
      t.integer :totalFat
      t.integer :saturatedFat
      t.integer :transFat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :carbohydrates
      t.integer :dietaryFiber
      t.integer :protein
      t.integer :vitaminA
      t.integer :vitaminC
      t.integer :calcium
      t.integer :iron
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :dairyAllergy
      t.boolean :eggAllergy
      t.boolean :peanutAllergy
      t.boolean :treenutAllergy
      t.boolean :fishAllergy
      t.boolean :shellfishAllergy
      t.boolean :soyAllergy
      t.boolean :wheatAllergy
      t.boolean :wholeGrain
      t.boolean :healthfulChoice
      t.boolean :heartSmart
      t.boolean :kosher

      t.timestamps null: false
    end
  end
end
