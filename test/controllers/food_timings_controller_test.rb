require 'test_helper'

class FoodTimingsControllerTest < ActionController::TestCase
  setup do
    @food_timing = food_timings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_timing" do
    assert_difference('FoodTiming.count') do
      post :create, food_timing: { timing: 'lunch'}
    end

    assert_redirected_to food_timing_path(assigns(:food_timing))
  end

  test "should show food_timing" do
    get :show, id: @food_timing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_timing
    assert_response :success
  end

  test "should update food_timing" do
    patch :update, id: @food_timing, food_timing: { timing: @food_timing.timing }
    assert_redirected_to food_timing_path(assigns(:food_timing))
  end

  test "should destroy food_timing" do
    assert_difference('FoodTiming.count', -1) do
      delete :destroy, id: @food_timing
    end

    assert_redirected_to food_timings_path
  end
end
