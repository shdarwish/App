class MyMealsController < ApplicationController
  include CurrentMeal

  # when creating a my meal create a meal automaticly 
  before_action :set_meal, only: [:create]
  
  before_action :set_my_meal, only: [:show, :edit, :update, :destroy]

  # before going to any page it checks if the user is logged_in
  skip_before_action :authenticate


  # GET /my_meals
  # GET /my_meals.json
  def index
    @my_meals = MyMeal.all
  end

  # GET /my_meals/1
  # GET /my_meals/1.json
  def show
  end

  # GET /my_meals/new
  def new
    @my_meal = MyMeal.new
  end

  # GET /my_meals/1/edit
  def edit
  end

  # POST /my_meals
  # POST /my_meals.json
  def create

    food = Food.find(params[:food_id]) 
    @my_meal = @meal.add_food(food.id)

    respond_to do |format|
      if @my_meal.save

        format.html { redirect_to @my_meal.meal }
        format.json { render :show, status: :created, location: @my_meal }
      else
        format.html { render :new }
        format.json { render json: @my_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_meals/1
  # PATCH/PUT /my_meals/1.json
  def update
    respond_to do |format|
      if @my_meal.update(my_meal_params)
        format.html { redirect_to @my_meal, notice: 'My meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_meal }
      else
        format.html { render :edit }
        format.json { render json: @my_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_meals/1
  # DELETE /my_meals/1.json
  def destroy
    @my_meal.destroy
    respond_to do |format|
      format.html { redirect_to my_meals_url, notice: 'My meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_meal
      @my_meal = MyMeal.find(params[:id])
      puts @my_meal
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_meal_params
     # params.require(:my_meal).permit(:food_id, :meal_id)
     params.require(:my_meal).permit(:food_id)
    end
end
