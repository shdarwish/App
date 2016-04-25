class Meal < ActiveRecord::Base

	#relation
	has_many :my_meals, dependent: :destroy


	# a method to add a food to meal
	def add_food(food_id)
		current_item = my_meals.find_by(food_id: food_id) 
		if current_item
			current_item.quantity += 1
		else
			current_item = my_meals.build(food_id: food_id)
		end
		current_item
	end

	# calculte total servingSize of the whole meal
	def total_servingSize
		my_meals.to_a.sum { |item| item.total_servingSize }
	end

	# calculte total calories of the whole meal
	def total_calories
		my_meals.to_a.sum { |item| item.total_calories }
	end

	# calculte total protein of the whole meal
	def total_protein
		my_meals.to_a.sum { |item| item.total_protein }
	end

# calculte total totalfat of the whole meal
	def total_totalFat
		my_meals.to_a.sum { |item| item.total_totalFat }
	end

# calculte total saturated of the whole meal
	def total_saturated
		my_meals.to_a.sum { |item| item.total_saturated }
	end

# calculte total tans of the whole meal
	def total_trans
		my_meals.to_a.sum { |item| item.total_trans }
	end

# calculte total cholesterol of the whole meal
	def total_cholesterol
		my_meals.to_a.sum { |item| item.total_cholesterol }
	end

# calculte total carbohydrates of the whole meal
	def total_carbohydrates
		my_meals.to_a.sum { |item| item.total_carbohydrates }
	end

# calculte total sugars of the whole meal
	def total_sugars
		my_meals.to_a.sum { |item| item.total_sugars }
	end

# calculte total dietaryFiber of the whole meal
	def total_dietaryFiber
		my_meals.to_a.sum { |item| item.total_dietaryFiber }
	end

# calculte total sodium of the whole meal
	def total_sodium
		my_meals.to_a.sum { |item| item.total_sodium }
	end

# calculte total potassium of the whole meal
	def total_potassium
		my_meals.to_a.sum { |item| item.total_potassium }
	end

# calculte total magnesium of the whole meal
	def total_magnesium
		my_meals.to_a.sum { |item| item.total_magnesium }
	end

# calculte total calcium of the whole meal
	def total_calcium
		my_meals.to_a.sum { |item| item.total_calcium }
	end

# calculte total iron of the whole meal
	def total_iron
		my_meals.to_a.sum { |item| item.total_iron }
	end

# calculte total vitaminD of the whole meal
	def total_vitaminD
		my_meals.to_a.sum { |item| item.total_vitaminD }
	end

end
