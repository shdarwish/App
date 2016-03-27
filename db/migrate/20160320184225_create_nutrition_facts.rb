class CreateNutritionFacts < ActiveRecord::Migration
  def change
    create_table :nutrition_facts do |t|
      t.integer :food_id
      t.integer :servingSize
      t.integer :calories
      t.float :protein
      t.float :totalFat
      t.float :saturated
      t.float :trans
      t.float :cholesterol
      t.float :carbohydrates
      t.float :sugars
      t.float :dietaryFiber
      t.float :sodium
      t.float :potassium
      t.float :magnesium
      t.float :calcium
      t.float :iron
      t.float :vitaminD
      t.boolean  :eggAllergy
      t.boolean  :fishAllergy
      t.boolean  :shellfishAllergy
      t.boolean  :soyAllergy
      t.boolean  :dairyAllergy
      t.boolean  :milkAllergy
      t.boolean  :wheatAllergy
      t.boolean  :g6pdAllergy

      t.timestamps null: false
    end
  end
end
