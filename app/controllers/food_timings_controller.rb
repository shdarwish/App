class FoodTimingsController < ApplicationController
  before_action :set_food_timing, only: [:show, :edit, :update, :destroy]
 # before_action :admin_only, only: [:show, :new, :edit, :create, :update, :destroy]

  # GET /food_timings
  # GET /food_timings.json
  def index
    @food_timings = FoodTiming.all
  end

  # GET /food_timings/1
  # GET /food_timings/1.json
  def show
  end

  # GET /food_timings/new
  def new
    @food_timing = FoodTiming.new
  end

  # GET /food_timings/1/edit
  def edit
  end

  # POST /food_timings
  # POST /food_timings.json
  def create
    @food_timing = FoodTiming.new(food_timing_params)

    respond_to do |format|
      if @food_timing.save
        format.html { redirect_to @food_timing, notice: 'Food timing was successfully created.' }
        format.json { render :show, status: :created, location: @food_timing }
      else
        format.html { render :new }
        format.json { render json: @food_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_timings/1
  # PATCH/PUT /food_timings/1.json
  def update
    respond_to do |format|
      if @food_timing.update(food_timing_params)
        format.html { redirect_to @food_timing, notice: 'Food timing was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_timing }
      else
        format.html { render :edit }
        format.json { render json: @food_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_timings/1
  # DELETE /food_timings/1.json
  def destroy
    @food_timing.destroy
    respond_to do |format|
      format.html { redirect_to food_timings_url, notice: 'Food timing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_timing
      @food_timing = FoodTiming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_timing_params
      params.require(:food_timing).permit(:timing)
    end


  #  def admin_only
   #   if !current_user.admin?
    #    redirect_to root_path
     # end 
    #end


end
