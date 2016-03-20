class NutritionFact < ActiveRecord::Base
	belongs_to :food
	validates :food_id, presence: true, uniqueness: true
	validates :servingSize, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :calories, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :protein, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :totalFat, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :saturated, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :trans, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :cholesterol, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :carbohydrates, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :sugars, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :dietaryFiber, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :sodium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :potassium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :magnesium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :calcium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :iron, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :vitaminD, presence: true, numericality: {greater_than_or_equal_to: 0}
end
