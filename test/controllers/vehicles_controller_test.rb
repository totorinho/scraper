require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { drivetrain: @vehicle.drivetrain, exterior_color: @vehicle.exterior_color, interior_color: @vehicle.interior_color, miles: @vehicle.miles, price: @vehicle.price, stock_type: @vehicle.stock_type, title: @vehicle.title, transmission: @vehicle.transmission } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { drivetrain: @vehicle.drivetrain, exterior_color: @vehicle.exterior_color, interior_color: @vehicle.interior_color, miles: @vehicle.miles, price: @vehicle.price, stock_type: @vehicle.stock_type, title: @vehicle.title, transmission: @vehicle.transmission } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
