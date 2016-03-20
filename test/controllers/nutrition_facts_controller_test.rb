require 'test_helper'

class NutritionFactsControllerTest < ActionController::TestCase
  setup do
    @nutrition_fact = nutrition_facts(:one)
    @update = {food_id: 3, servingSize: 1, calories: 1, protein: 1.5, totalFat: 1.5, saturated: 1.5, trans: 1.5, cholesterol: 1.5, carbohydrates: 1.5, sugars: 1.5, dietaryFiber: 1.5, sodium: 1.5, potassium: 1.5, magnesium: 1.5, calcium: 1.5, iron: 1.5, vitaminD: 1.5, vegetarian: false, vegan: false, dairyAllergy: false, eggAllergy: false, peanutAllergy: false, treenutAllergy: false, fishAllergy: false, shellfishAllergy: false, soyAllergy: false, wheatAllergy: false, wholeGrain: false, healthfulChoice: false, heartSmart: false, kosher: false}
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
    patch :update, id: @nutrition_fact, nutrition_fact: { calcium: @nutrition_fact.calcium, calories: @nutrition_fact.calories, carbohydrates: @nutrition_fact.carbohydrates, cholesterol: @nutrition_fact.cholesterol, dairyAllergy: @nutrition_fact.dairyAllergy, dietaryFiber: @nutrition_fact.dietaryFiber, eggAllergy: @nutrition_fact.eggAllergy, fishAllergy: @nutrition_fact.fishAllergy, food_id: @nutrition_fact.food_id, healthfulChoice: @nutrition_fact.healthfulChoice, heartSmart: @nutrition_fact.heartSmart, iron: @nutrition_fact.iron, kosher: @nutrition_fact.kosher, magnesium: @nutrition_fact.magnesium, peanutAllergy: @nutrition_fact.peanutAllergy, potassium: @nutrition_fact.potassium, protein: @nutrition_fact.protein, saturated: @nutrition_fact.saturated, servingSize: @nutrition_fact.servingSize, shellfishAllergy: @nutrition_fact.shellfishAllergy, sodium: @nutrition_fact.sodium, soyAllergy: @nutrition_fact.soyAllergy, sugars: @nutrition_fact.sugars, totalFat: @nutrition_fact.totalFat, trans: @nutrition_fact.trans, treenutAllergy: @nutrition_fact.treenutAllergy, vegan: @nutrition_fact.vegan, vegetarian: @nutrition_fact.vegetarian, vitaminD: @nutrition_fact.vitaminD, wheatAllergy: @nutrition_fact.wheatAllergy, wholeGrain: @nutrition_fact.wholeGrain }
    assert_redirected_to nutrition_fact_path(assigns(:nutrition_fact))
  end

  test "should destroy nutrition_fact" do
    assert_difference('NutritionFact.count', -1) do
      delete :destroy, id: @nutrition_fact
    end

    assert_redirected_to nutrition_facts_path
  end
end
