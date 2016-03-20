json.array!(@nutrition_facts) do |nutrition_fact|
  json.extract! nutrition_fact, :id, :food_id, :servingSize, :calories, :protein, :totalFat, :saturated, :trans, :cholesterol, :carbohydrates, :sugars, :dietaryFiber, :sodium, :potassium, :magnesium, :calcium, :iron, :vitaminD, :vegetarian, :vegan, :dairyAllergy, :eggAllergy, :peanutAllergy, :treenutAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :wheatAllergy, :wholeGrain, :healthfulChoice, :heartSmart, :kosher
  json.url nutrition_fact_url(nutrition_fact, format: :json)
end
