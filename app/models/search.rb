class Search < ActiveRecord::Base

	# Methods
	# This method will preform the search by ranges and the search by allergies and diet 
	# it will take the paramters from the search/new and pass them in this method 
	def search_foods

		foods = Food.all

		foods = foods.where(["calories >= ?", calories_min]) if calories_min.present?
		foods = foods.where(["calories <= ?", calories_max]) if calories_max.present?

		foods = foods.where(["protein >= ?", protein_min]) if protein_min.present?
		foods = foods.where(["protein <= ?", protein_max]) if protein_max.present?

		foods = foods.where(["totalfat >= ?", totalfat_min]) if totalfat_min.present?
		foods = foods.where(["totalfat <= ?", totalfat_max]) if totalfat_max.present?

		foods = foods.where(["saturated >= ?", saturated_min]) if saturated_min.present?
		foods = foods.where(["saturated <= ?", saturated_max]) if saturated_max.present?

		foods = foods.where(["trans >= ?", trans_min]) if trans_min.present?
		foods = foods.where(["trans <= ?", trans_max]) if trans_max.present?

		foods = foods.where(["cholesterol >= ?", cholesterol_min]) if cholesterol_min.present?
		foods = foods.where(["cholesterol <= ?", cholesterol_max]) if cholesterol_max.present?

		foods = foods.where(["carbohydrate >= ?", carbohydrate_min]) if carbohydrate_min.present?
		foods = foods.where(["carbohydrate <= ?", carbohydrate_max]) if carbohydrate_max.present?

		foods = foods.where(["sugars >= ?", sugars_min]) if sugars_min.present?
		foods = foods.where(["sugars <= ?", sugars_max]) if sugars_max.present?

		foods = foods.where(["dietaryfiber >= ?", dietaryfiber_min]) if dietaryfiber_min.present?
		foods = foods.where(["dietaryfiber <= ?", dietaryfiber_max]) if dietaryfiber_max.present?

		foods = foods.where(["sodium >= ?", sodium_min]) if sodium_min.present?
		foods = foods.where(["sodium <= ?", sodium_max]) if sodium_max.present?

		foods = foods.where(["potassium >= ?", potassium_min]) if potassium_min.present?
		foods = foods.where(["potassium <= ?", potassium_max]) if potassium_max.present?

		foods = foods.where(["magnesium >= ?", magnesium_min]) if magnesium_min.present?
		foods = foods.where(["magnesium <= ?", magnesium_max]) if magnesium_max.present?

		foods = foods.where(["calcium >= ?", calcium_min]) if calcium_min.present?
		foods = foods.where(["calcium <= ?", calcium_max]) if calcium_max.present?

		foods = foods.where(["iron >= ?", iron_min]) if iron_min.present?
		foods = foods.where(["iron <= ?", iron_max]) if iron_max.present?

		foods = foods.where.not(["eggAllergy LIKE ?", eggAllergy]) if eggAllergy.present?

		foods = foods.where.not(["fishAllergy LIKE ?", fishAllergy]) if fishAllergy.present?

		foods = foods.where.not(["shellfishAllergy LIKE ?", shellfishAllergy]) if shellfishAllergy.present?

		foods = foods.where.not(["soyAllergy LIKE ?", soyAllergy]) if soyAllergy.present?

		foods = foods.where.not(["dairyAllergy LIKE ?", dairyAllergy]) if dairyAllergy.present?

		foods = foods.where.not(["milkAllergy LIKE ?", milkAllergy]) if milkAllergy.present?

		foods = foods.where.not(["wheatAllergy LIKE ?", wheatAllergy]) if wheatAllergy.present?

		foods = foods.where.not(["g6pdAllergy LIKE ?", g6pdAllergy]) if g6pdAllergy.present?

		foods = foods.where(["vegetarian LIKE ?", vegetarian]) if vegetarian.present?

		return foods

	end
end
