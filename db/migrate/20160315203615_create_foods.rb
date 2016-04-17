class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :type_id

      t.integer :servingSize
      t.integer :calories
      t.float :protein, default: 0
      t.float :totalFat, default: 0 
      t.float :saturated, default: 0
      t.float :trans, default: 0
      t.float :cholesterol, default: 0
      t.float :carbohydrates, default: 0
      t.float :sugars, default: 0
      t.float :dietaryFiber, default: 0
      t.float :sodium, default: 0
      t.float :potassium, default: 0
      t.float :magnesium, default: 0
      t.float :calcium, default: 0
      t.float :iron, default: 0
      t.float :vitaminD, default: 0
      t.boolean  :eggAllergy
      t.boolean  :fishAllergy
      t.boolean  :shellfishAllergy
      t.boolean  :soyAllergy
      t.boolean  :dairyAllergy
      t.boolean  :milkAllergy
      t.boolean  :wheatAllergy
      t.boolean  :g6pdAllergy
      t.boolean  :vegetarian

      t.timestamps null: false
    end
  end
end
