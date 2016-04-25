class CombineFoodsInMeal < ActiveRecord::Migration
  def change
  end


  def up 
  # replace multiple items for a single food in a meal with a single item 
  	Meal.all.each do |meal| 
  		# count the number of each product in the cart
  		sums = meal.my_meals.group(:food_id).sum(:quantity)

  		sums.each do |food_id, quantity| 
  			if quantity > 1 
  				# remove individual items
  				meal.my_meals.where(food_id: food_id).delete_all
        		# replace with a single item
        		item = meal.my_meals.build(food_id: food_id)
        		item.quantity = quantity
        		item.save!
        	end 
    	end 
	end 
	end 


	def down
		# split items with quantity>1 into multiple items 
		MyMeal.where("quantity>1").each do |my_meal|
		# add individual items
			my_meal.quantity.times do
				MyMeal.create meal_id: my_meal.meal_id,
				food_id: my_meal.food_id, quantity: 1
			end
			# remove original item
			my_meal.destroy
		end 
	end



end
