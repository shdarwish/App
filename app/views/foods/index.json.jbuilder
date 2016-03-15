json.array!(@foods) do |food|
  json.extract! food, :id, :name, :type_id, :restaurant_id, :food_timing_id
  json.url food_url(food, format: :json)
end
