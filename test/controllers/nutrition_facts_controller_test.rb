require 'test_helper'

class NutritionFactsControllerTest < ActionController::TestCase
  setup do
    @nutrition_fact = nutrition_facts(:one)
    @update = { calcium: 1, calories: 2, carbohydrates: 10, cholesterol: 10, dairyAllergy: false, dietaryFiber: 3, eggAllergy: false, fishAllergy: false, food_id: 3, healthfulChoice: false, heartSmart: false, iron: 2, kosher: false, peanutAllergy: false, protein: 2, saturatedFat: 1, servingSize: 1, shellfishAllergy: false, sodium: 1, soyAllergy: false, totalFat: 5, transFat: 3, treenutAllergy: false, vegan: false, vegetarian: true, vitaminA: 3, vitaminC: 2, wheatAllergy: false, wholeGrain: true}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutrition_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrition_fact" do
    assert_difference('NutritionFact.count') do
      post :create, nutrition_fact: @update
    end

    assert_redirected_to nutrition_fact_path(assigns(:nutrition_fact))
  end

  test "should show nutrition_fact" do
    get :show, id: @nutrition_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrition_fact
    assert_response :success
  end

  test "should update nutrition_fact" do
    patch :update, id: @nutrition_fact, nutrition_fact: { calcium: @nutrition_fact.calcium, calories: @nutrition_fact.calories, carbohydrates: @nutrition_fact.carbohydrates, cholesterol: @nutrition_fact.cholesterol, dairyAllergy: @nutrition_fact.dairyAllergy, dietaryFiber: @nutrition_fact.dietaryFiber, eggAllergy: @nutrition_fact.eggAllergy, fishAllergy: @nutrition_fact.fishAllergy, food_id: @nutrition_fact.food_id, healthfulChoice: @nutrition_fact.healthfulChoice, heartSmart: @nutrition_fact.heartSmart, iron: @nutrition_fact.iron, kosher: @nutrition_fact.kosher, peanutAllergy: @nutrition_fact.peanutAllergy, protein: @nutrition_fact.protein, saturatedFat: @nutrition_fact.saturatedFat, servingSize: @nutrition_fact.servingSize, shellfishAllergy: @nutrition_fact.shellfishAllergy, sodium: @nutrition_fact.sodium, soyAllergy: @nutrition_fact.soyAllergy, totalFat: @nutrition_fact.totalFat, transFat: @nutrition_fact.transFat, treenutAllergy: @nutrition_fact.treenutAllergy, vegan: @nutrition_fact.vegan, vegetarian: @nutrition_fact.vegetarian, vitaminA: @nutrition_fact.vitaminA, vitaminC: @nutrition_fact.vitaminC, wheatAllergy: @nutrition_fact.wheatAllergy, wholeGrain: @nutrition_fact.wholeGrain }
    assert_redirected_to nutrition_fact_path(assigns(:nutrition_fact))
  end

  test "should destroy nutrition_fact" do
    assert_difference('NutritionFact.count', -1) do
      delete :destroy, id: @nutrition_fact
    end

    assert_redirected_to nutrition_facts_path
  end
end
