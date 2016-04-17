class SearchesController < ApplicationController
  skip_before_action :authenticate

	def new 
		@search = Search.new
	# I might need this thing to do search by food type 
	#	@categories = Book.uniq.pluck(:categories)
	end

	def create 
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end


	private 

	def search_params
		params.require(:search).permit(:calories_min, :calories_max, :protein_min, :protein_max, :totalfat_min, :totalfat_max, :saturated_min, :saturated_max, :trans_min, :trans_max, :cholesterol_min, :cholesterol_max, :carbohydrate_min, :carbohydrate_max, :sugars_min, :sugars_max, :dietaryfiber_min, :dietaryfiber_max, :sodium_min, :sodium_max, :potassium_min, :potassium_max, :magnesium_min, :magnesium_max, :calcium_min, :calcium_max, :iron_min, :iron_max, :vitamind_min, :vitamind_max, :eggAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :dairyAllergy, :milkAllergy, :wheatAllergy, :g6pdAllergy, :vegetarian)
	end

end
