class MyMeal < ActiveRecord::Base

  #relation
  belongs_to :food
  belongs_to :meal


  #calculate the serving * quantitiy 
  def total_servingSize
    food.servingSize * quantity
  end

  #calculate the calories * quantitiy 
  def total_calories
    food.calories * quantity
  end

  #calculate the protine * quantitiy 
  def total_protein
    food.protein * quantity
  end

  #calculate the totalfat * quantitiy 
  def total_totalFat
    food.totalFat * quantity
  end

  #calculate the saturated * quantitiy 
  def total_saturated
    food.saturated * quantity
  end

  #calculate the trans * quantitiy 
  def total_trans
    food.trans * quantity
  end

  #calculate the cholesterol * quantitiy 
  def total_cholesterol
    food.cholesterol * quantity
  end

  #calculate the carbohydrates * quantitiy 
  def total_carbohydrates
    food.carbohydrates * quantity
  end

  #calculate the sugars * quantitiy 
  def total_sugars
    food.sugars * quantity
  end

  #calculate the dietaryFiber * quantitiy 
  def total_dietaryFiber
    food.dietaryFiber * quantity
  end

  #calculate the sodium * quantity
  def total_sodium
    food.sodium * quantity
  end

  #calculate the potassium * quantity
  def total_potassium
    food.potassium * quantity
  end

  #calculate the magnesium * quantity
  def total_magnesium
    food.magnesium * quantity
  end

  #calculate the calcium * quantity
  def total_calcium
    food.calcium * quantity
  end

  #calculate the iron * quantity
  def total_iron
    food.iron * quantity
  end

  #calculate the vitaminD * quantity
  def total_vitaminD
    food.vitaminD * quantity
  end

end
