json.array!(@foods) do |food|
  json.extract! food, :id, :name, :type_id, :servingSize, :calories, :protein, :totalFat, :saturated, :trans, :cholesterol, :carbohydrates, :sugars, :dietaryFiber, :sodium, :potassium, :magnesium, :calcium, :iron, :vitaminD, :eggAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :dairyAllergy, :milkAllergy, :wheatAllergy, :g6pdAllergy, :vegetarian
  json.url food_url(food, format: :json)
end
