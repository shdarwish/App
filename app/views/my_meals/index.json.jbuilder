json.array!(@my_meals) do |my_meal|
  json.extract! my_meal, :id, :food_id, :meal_id
  json.url my_meal_url(my_meal, format: :json)
end
