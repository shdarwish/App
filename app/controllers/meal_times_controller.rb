class MealTimesController < ApplicationController
  before_action :set_meal_time, only: [:show, :edit, :update, :destroy]

  #do not check if the user is logged_in before preforming step1
  skip_before_action :authenticate, only: [:step1]

  # GET /meal_times
  # GET /meal_times.json
  def index
    @meal_times = MealTime.all
  end

  # GET /meal_times/1
  # GET /meal_times/1.json
  def show
  end

  # GET /meal_times/new
  def new
    @meal_time = MealTime.new
  end

  # GET /meal_times/1/edit
  def edit
  end

  # POST /meal_times
  # POST /meal_times.json
  def create
    @meal_time = MealTime.new(meal_time_params)

    respond_to do |format|
      if @meal_time.save
        format.html { redirect_to @meal_time, notice: 'Meal time was successfully created.' }
        format.json { render :show, status: :created, location: @meal_time }
      else
        format.html { render :new }
        format.json { render json: @meal_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_times/1
  # PATCH/PUT /meal_times/1.json
  def update
    respond_to do |format|
      if @meal_time.update(meal_time_params)
        format.html { redirect_to @meal_time, notice: 'Meal time was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_time }
      else
        format.html { render :edit }
        format.json { render json: @meal_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_times/1
  # DELETE /meal_times/1.json
  def destroy
    @meal_time.destroy
    respond_to do |format|
      format.html { redirect_to meal_times_url, notice: 'Meal time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # This method take us to a page to be used for Step1 in Configure a Meal process
  # the page will show all the records of meal times from the database 
  def step1
    @meal_times = MealTime.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_time
      @meal_time = MealTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_time_params
      params.require(:meal_time).permit(:time)
    end
end
