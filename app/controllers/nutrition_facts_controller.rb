class NutritionFactsController < ApplicationController
  before_action :set_nutrition_fact, only: [:show, :edit, :update, :destroy]
  #skip_before_action :authenticate, only: [:show]

  # GET /nutrition_facts
  # GET /nutrition_facts.json
  def index
    @nutrition_facts = NutritionFact.all
  end

  # GET /nutrition_facts/1
  # GET /nutrition_facts/1.json
  def show
  end

  # GET /nutrition_facts/new
  def new
    @nutrition_fact = NutritionFact.new
  end

  # GET /nutrition_facts/1/edit
  def edit
  end

  # POST /nutrition_facts
  # POST /nutrition_facts.json
  def create
    @nutrition_fact = NutritionFact.new(nutrition_fact_params)

    respond_to do |format|
      if @nutrition_fact.save
        format.html { redirect_to @nutrition_fact, notice: 'Nutrition fact was successfully created.' }
        format.json { render :show, status: :created, location: @nutrition_fact }
      else
        format.html { render :new }
        format.json { render json: @nutrition_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutrition_facts/1
  # PATCH/PUT /nutrition_facts/1.json
  def update
    respond_to do |format|
      if @nutrition_fact.update(nutrition_fact_params)
        format.html { redirect_to @nutrition_fact, notice: 'Nutrition fact was successfully updated.' }
        format.json { render :show, status: :ok, location: @nutrition_fact }
      else
        format.html { render :edit }
        format.json { render json: @nutrition_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutrition_facts/1
  # DELETE /nutrition_facts/1.json
  def destroy
    @nutrition_fact.destroy
    respond_to do |format|
      format.html { redirect_to nutrition_facts_url, notice: 'Nutrition fact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutrition_fact
      @nutrition_fact = NutritionFact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutrition_fact_params
      params.require(:nutrition_fact).permit(:food_id, :servingSize, :calories, :protein, :totalFat, :saturated, :trans, :cholesterol, :carbohydrates, :sugars, :dietaryFiber, :sodium, :potassium, :magnesium, :calcium, :iron, :vitaminD, :vegetarian, :vegan, :dairyAllergy, :eggAllergy, :peanutAllergy, :treenutAllergy, :fishAllergy, :shellfishAllergy, :soyAllergy, :wheatAllergy, :wholeGrain, :healthfulChoice, :heartSmart, :kosher)
    end
end
