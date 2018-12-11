require 'test_helper'

class ScootersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scooter = scooters(:one)
  end

  test "should get index" do
    get scooters_url, as: :json
    assert_response :success
  end

  test "should create scooter" do
    assert_difference('Scooter.count') do
      post scooters_url, params: { scooter: { latitude: @scooter.latitude, longitude: @scooter.longitude } }, as: :json
    end

    assert_response 201
  end

  test "should show scooter" do
    get scooter_url(@scooter), as: :json
    assert_response :success
  end

  test "should update scooter" do
    patch scooter_url(@scooter), params: { scooter: { latitude: @scooter.latitude, longitude: @scooter.longitude } }, as: :json
    assert_response 200
  end

  test "should destroy scooter" do
    assert_difference('Scooter.count', -1) do
      delete scooter_url(@scooter), as: :json
    end

    assert_response 204
  end
end
