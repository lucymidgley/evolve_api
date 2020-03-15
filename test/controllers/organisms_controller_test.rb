require 'test_helper'

class OrganismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organism = organisms(:one)
  end

  test "should get index" do
    get organisms_url, as: :json
    assert_response :success
  end

  test "should create organism" do
    assert_difference('Organism.count') do
      post organisms_url, params: { organism: { age: @organism.age, color: @organism.color, energy_efficiency: @organism.energy_efficiency, energy_level: @organism.energy_level, game_id: @organism.game_id, life_span: @organism.life_span, max_energy: @organism.max_energy, max_size: @organism.max_size, name: @organism.name, offspring_capacity: @organism.offspring_capacity, parent_1: @organism.parent_1, parent_2: @organism.parent_2, perception: @organism.perception, predator: @organism.predator, reproductive_age: @organism.reproductive_age, sex: @organism.sex, size: @organism.size, speed: @organism.speed, x_coord: @organism.x_coord, y_coord: @organism.y_coord } }, as: :json
    end

    assert_response 201
  end

  test "should show organism" do
    get organism_url(@organism), as: :json
    assert_response :success
  end

  test "should update organism" do
    patch organism_url(@organism), params: { organism: { age: @organism.age, color: @organism.color, energy_efficiency: @organism.energy_efficiency, energy_level: @organism.energy_level, game_id: @organism.game_id, life_span: @organism.life_span, max_energy: @organism.max_energy, max_size: @organism.max_size, name: @organism.name, offspring_capacity: @organism.offspring_capacity, parent_1: @organism.parent_1, parent_2: @organism.parent_2, perception: @organism.perception, predator: @organism.predator, reproductive_age: @organism.reproductive_age, sex: @organism.sex, size: @organism.size, speed: @organism.speed, x_coord: @organism.x_coord, y_coord: @organism.y_coord } }, as: :json
    assert_response 200
  end

  test "should destroy organism" do
    assert_difference('Organism.count', -1) do
      delete organism_url(@organism), as: :json
    end

    assert_response 204
  end
end
