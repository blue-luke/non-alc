require "test_helper"

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get manufacturers_url, as: :json
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post manufacturers_url, params: { manufacturer: { country_founded: @manufacturer.country_founded, name: @manufacturer.name, year_founded: @manufacturer.year_founded } }, as: :json
    end

    assert_response 201
  end

  test "should show manufacturer" do
    get manufacturer_url(@manufacturer), as: :json
    assert_response :success
  end

  test "should update manufacturer" do
    patch manufacturer_url(@manufacturer), params: { manufacturer: { country_founded: @manufacturer.country_founded, name: @manufacturer.name, year_founded: @manufacturer.year_founded } }, as: :json
    assert_response 200
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete manufacturer_url(@manufacturer), as: :json
    end

    assert_response 204
  end
end
