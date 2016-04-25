class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  #do not check if the user is logged_in before preforming show, fsearch and step4 
  skip_before_action :authenticate, only: [:show, :fsearch, :step4]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }

        @food.restaurants = Restaurant.find(params[:restaurant_ids])
        @food.meal_times = MealTime.find(params[:meal_time_ids])
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # This method take us to a page the will present the results from search by name
  # The page will show all the records using method search from food model
  # :search is the keyword/name passed in the search page
  def fsearch
    @foods = Food.search(params[:search])
  end

  # This method take us to a page to be used for Step4 in Configure a Meal process
  # The page will show all the records useing method step4 from the model
  # :type is the clicked type 
  # $type stores the type as a global variable 
  def step4
    @foods = Food.clickedtype(params[:type])
    $type = params[:type]
  end 




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :type_id, :servingSize, :calories, :protein, :totalFat, :saturated, :trans, :cholesterol, :carbohydrates, :sugars, :dietaryFiber, :sodium, :potassium, :magnesium, :calcium, :iron, :vitaminD, :eggAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :dairyAllergy, :milkAllergy, :wheatAllergy, :g6pdAllergy, :vegetarian)
    end
end
