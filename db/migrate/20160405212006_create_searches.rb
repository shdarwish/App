class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|

    	t.float :calories_min
    	t.float :calories_max

    	t.float :protein_min
    	t.float :protein_max

    	t.float :totalfat_min
    	t.float :totalfat_max

    	t.float :saturated_min
    	t.float :saturated_max

    	t.float :trans_min
    	t.float :trans_max

    	t.float :cholesterol_min
    	t.float :cholesterol_max

    	t.float :carbohydrate_min
    	t.float :carbohydrate_max

    	t.float :sugars_min
    	t.float :sugars_max

    	t.float :dietaryfiber_min
    	t.float :dietaryfiber_max

    	t.float :sodium_min
    	t.float :sodium_max

    	t.float :potassium_min
    	t.float :potassium_max

    	t.float :magnesium_min
    	t.float :magnesium_max

    	t.float :calcium_min
    	t.float :calcium_max

    	t.float :iron_min
    	t.float :iron_max

        t.float :vitamind_min
        t.float :vitamind_max

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
