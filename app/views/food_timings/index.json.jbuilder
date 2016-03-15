json.array!(@food_timings) do |food_timing|
  json.extract! food_timing, :id, :timing
  json.url food_timing_url(food_timing, format: :json)
end
