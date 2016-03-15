require 'test_helper'

class FoodsControllerTest < ActionController::TestCase
  setup do
    @food = foods(:one)
    @update = { food_timing_id: 1, name: 'fish', restaurant_id: 1, type_id: 1 }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post :create, food: @update
    end

    assert_redirected_to food_path(assigns(:food))
  end

  test "should show food" do
    get :show, id: @food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food
    assert_response :success
  end

  test "should update food" do
    patch :update, id: @food, food: { food_timing_id: @food.food_timing_id, name: @food.name, restaurant_id: @food.restaurant_id, type_id: @food.type_id }
    assert_redirected_to food_path(assigns(:food))
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete :destroy, id: @food
    end

    assert_redirected_to foods_path
  end
end
