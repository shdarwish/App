json.array!(@nutrition_facts) do |nutrition_fact|
  json.extract! nutrition_fact, :id, :food_id, :servingSize, :calories, :totalFat, :saturatedFat, :transFat, :cholesterol, :sodium, :carbohydrates, :dietaryFiber, :protein, :vitaminA, :vitaminC, :calcium, :iron, :vegetarian, :vegan, :dairyAllergy, :eggAllergy, :peanutAllergy, :treenutAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :wheatAllergy, :wholeGrain, :healthfulChoice, :heartSmart, :kosher
  json.url nutrition_fact_url(nutrition_fact, format: :json)
end
