require 'test_helper'

class SeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seed = seeds(:one)
  end

  test "should get index" do
    get seeds_url, as: :json
    assert_response :success
  end

  test "should create seed" do
    assert_difference('Seed.count') do
      post seeds_url, params: { seed: { game_id: @seed.game_id, seed: @seed.seed } }, as: :json
    end

    assert_response 201
  end

  test "should show seed" do
    get seed_url(@seed), as: :json
    assert_response :success
  end

  test "should update seed" do
    patch seed_url(@seed), params: { seed: { game_id: @seed.game_id, seed: @seed.seed } }, as: :json
    assert_response 200
  end

  test "should destroy seed" do
    assert_difference('Seed.count', -1) do
      delete seed_url(@seed), as: :json
    end

    assert_response 204
  end
end
