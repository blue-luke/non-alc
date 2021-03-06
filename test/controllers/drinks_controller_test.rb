require "test_helper"

class DrinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drink = drinks(:one)
  end

  test "should get index" do
    get drinks_url, as: :json
    assert_response :success
  end

  test "should create drink" do
    assert_difference('Drink.count') do
      post drinks_url, params: { drink: { concentration: @drink.concentration, drink_type: @drink.drink_type, manufacturer: @drink.manufacturer, name: @drink.name } }, as: :json
    end

    assert_response 201
  end

  test "should show drink" do
    get drink_url(@drink), as: :json
    assert_response :success
  end

  test "should update drink" do
    patch drink_url(@drink), params: { drink: { concentration: @drink.concentration, drink_type: @drink.drink_type, manufacturer: @drink.manufacturer, name: @drink.name } }, as: :json
    assert_response 200
  end

  test "should destroy drink" do
    assert_difference('Drink.count', -1) do
      delete drink_url(@drink), as: :json
    end

    assert_response 204
  end
end
