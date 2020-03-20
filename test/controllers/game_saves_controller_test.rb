require 'test_helper'

class GameSavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_safe = game_saves(:one)
  end

  test "should get index" do
    get game_saves_url, as: :json
    assert_response :success
  end

  test "should create game_safe" do
    assert_difference('GameSave.count') do
      post game_saves_url, params: { game_safe: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show game_safe" do
    get game_safe_url(@game_safe), as: :json
    assert_response :success
  end

  test "should update game_safe" do
    patch game_safe_url(@game_safe), params: { game_safe: {  } }, as: :json
    assert_response 200
  end

  test "should destroy game_safe" do
    assert_difference('GameSave.count', -1) do
      delete game_safe_url(@game_safe), as: :json
    end

    assert_response 204
  end
end
