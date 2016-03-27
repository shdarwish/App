json.array!(@nutrition_facts) do |nutrition_fact|
  json.extract! nutrition_fact, :id, :food_id, :servingSize, :calories, :protein, :totalFat, :saturated, :trans, :cholesterol, :carbohydrates, :sugars, :dietaryFiber, :sodium, :potassium, :magnesium, :calcium, :iron, :vitaminD, :eggAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :dairyAllergy, :milkAllergy, :wheatAllergy, :g6pdAllergy
  json.url nutrition_fact_url(nutrition_fact, format: :json)
end
