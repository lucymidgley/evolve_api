require 'test_helper'

class FoodInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_instance = food_instances(:one)
  end

  test "should get index" do
    get food_instances_url, as: :json
    assert_response :success
  end

  test "should create food_instance" do
    assert_difference('FoodInstance.count') do
      post food_instances_url, params: { food_instance: { energy_level: @food_instance.energy_level, food_id: @food_instance.food_id, game_id: @food_instance.game_id, x_coord: @food_instance.x_coord, y_coord: @food_instance.y_coord } }, as: :json
    end

    assert_response 201
  end

  test "should show food_instance" do
    get food_instance_url(@food_instance), as: :json
    assert_response :success
  end

  test "should update food_instance" do
    patch food_instance_url(@food_instance), params: { food_instance: { energy_level: @food_instance.energy_level, food_id: @food_instance.food_id, game_id: @food_instance.game_id, x_coord: @food_instance.x_coord, y_coord: @food_instance.y_coord } }, as: :json
    assert_response 200
  end

  test "should destroy food_instance" do
    assert_difference('FoodInstance.count', -1) do
      delete food_instance_url(@food_instance), as: :json
    end

    assert_response 204
  end
end
