class Search < ActiveRecord::Base
	def search_nutrition_facts

		nutrition_facts = NutritionFact.all

		nutrition_facts = nutrition_facts.where(["calories >= ?", calories_min]) if calories_min.present?
		nutrition_facts = nutrition_facts.where(["calories <= ?", calories_max]) if calories_max.present?

		nutrition_facts = nutrition_facts.where(["protein >= ?", protein_min]) if protein_min.present?
		nutrition_facts = nutrition_facts.where(["protein <= ?", protein_max]) if protein_max.present?

		nutrition_facts = nutrition_facts.where(["totalfat >= ?", totalfat_min]) if totalfat_min.present?
		nutrition_facts = nutrition_facts.where(["totalfat <= ?", totalfat_max]) if totalfat_max.present?

		nutrition_facts = nutrition_facts.where(["saturated >= ?", saturated_min]) if saturated_min.present?
		nutrition_facts = nutrition_facts.where(["saturated <= ?", saturated_max]) if saturated_max.present?

		nutrition_facts = nutrition_facts.where(["trans >= ?", trans_min]) if trans_min.present?
		nutrition_facts = nutrition_facts.where(["trans <= ?", trans_max]) if trans_max.present?

		nutrition_facts = nutrition_facts.where(["cholesterol >= ?", cholesterol_min]) if cholesterol_min.present?
		nutrition_facts = nutrition_facts.where(["cholesterol <= ?", cholesterol_max]) if cholesterol_max.present?

		nutrition_facts = nutrition_facts.where(["carbohydrate >= ?", carbohydrate_min]) if carbohydrate_min.present?
		nutrition_facts = nutrition_facts.where(["carbohydrate <= ?", carbohydrate_max]) if carbohydrate_max.present?

		nutrition_facts = nutrition_facts.where(["sugars >= ?", sugars_min]) if sugars_min.present?
		nutrition_facts = nutrition_facts.where(["sugars <= ?", sugars_max]) if sugars_max.present?

		nutrition_facts = nutrition_facts.where(["dietaryfiber >= ?", dietaryfiber_min]) if dietaryfiber_min.present?
		nutrition_facts = nutrition_facts.where(["dietaryfiber <= ?", dietaryfiber_max]) if dietaryfiber_max.present?

		nutrition_facts = nutrition_facts.where(["sodium >= ?", sodium_min]) if sodium_min.present?
		nutrition_facts = nutrition_facts.where(["sodium <= ?", sodium_max]) if sodium_max.present?

		nutrition_facts = nutrition_facts.where(["potassium >= ?", potassium_min]) if potassium_min.present?
		nutrition_facts = nutrition_facts.where(["potassium <= ?", potassium_max]) if potassium_max.present?

		nutrition_facts = nutrition_facts.where(["magnesium >= ?", magnesium_min]) if magnesium_min.present?
		nutrition_facts = nutrition_facts.where(["magnesium <= ?", magnesium_max]) if magnesium_max.present?

		nutrition_facts = nutrition_facts.where(["calcium >= ?", calcium_min]) if calcium_min.present?
		nutrition_facts = nutrition_facts.where(["calcium <= ?", calcium_max]) if calcium_max.present?

		nutrition_facts = nutrition_facts.where(["iron >= ?", iron_min]) if iron_min.present?
		nutrition_facts = nutrition_facts.where(["iron <= ?", iron_max]) if iron_max.present?

		return nutrition_facts

	end
end
