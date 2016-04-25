require 'test_helper'

class MyMealsControllerTest < ActionController::TestCase
  setup do
    @my_meal = my_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_meal" do
    assert_difference('MyMeal.count') do
      post :create, my_meal: { food_id: @my_meal.food_id, meal_id: @my_meal.meal_id }
    end

    assert_redirected_to my_meal_path(assigns(:my_meal))
  end

  test "should show my_meal" do
    get :show, id: @my_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_meal
    assert_response :success
  end

  test "should update my_meal" do
    patch :update, id: @my_meal, my_meal: { food_id: @my_meal.food_id, meal_id: @my_meal.meal_id }
    assert_redirected_to my_meal_path(assigns(:my_meal))
  end

  test "should destroy my_meal" do
    assert_difference('MyMeal.count', -1) do
      delete :destroy, id: @my_meal
    end

    assert_redirected_to my_meals_path
  end
end
