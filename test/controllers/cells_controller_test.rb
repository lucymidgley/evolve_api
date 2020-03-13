require 'test_helper'

class CellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell = cells(:one)
  end

  test "should get index" do
    get cells_url, as: :json
    assert_response :success
  end

  test "should create cell" do
    assert_difference('Cell.count') do
      post cells_url, params: { cell: { age: @cell.age, colour: @cell.colour, energy_efficiency: @cell.energy_efficiency, energy_level: @cell.energy_level, game_id: @cell.game_id, life_span: @cell.life_span, max_energy: @cell.max_energy, max_size: @cell.max_size, name: @cell.name, offspring_capacity: @cell.offspring_capacity, parent_1: @cell.parent_1, parent_2: @cell.parent_2, perception: @cell.perception, predator: @cell.predator, reproductive_age: @cell.reproductive_age, sex: @cell.sex, size: @cell.size, speed: @cell.speed, x_coord: @cell.x_coord, y_coord: @cell.y_coord } }, as: :json
    end

    assert_response 201
  end

  test "should show cell" do
    get cell_url(@cell), as: :json
    assert_response :success
  end

  test "should update cell" do
    patch cell_url(@cell), params: { cell: { age: @cell.age, colour: @cell.colour, energy_efficiency: @cell.energy_efficiency, energy_level: @cell.energy_level, game_id: @cell.game_id, life_span: @cell.life_span, max_energy: @cell.max_energy, max_size: @cell.max_size, name: @cell.name, offspring_capacity: @cell.offspring_capacity, parent_1: @cell.parent_1, parent_2: @cell.parent_2, perception: @cell.perception, predator: @cell.predator, reproductive_age: @cell.reproductive_age, sex: @cell.sex, size: @cell.size, speed: @cell.speed, x_coord: @cell.x_coord, y_coord: @cell.y_coord } }, as: :json
    assert_response 200
  end

  test "should destroy cell" do
    assert_difference('Cell.count', -1) do
      delete cell_url(@cell), as: :json
    end

    assert_response 204
  end
end
