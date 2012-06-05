require 'test_helper'

class BatsmenControllerTest < ActionController::TestCase
  setup do
    @batsman = batsmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batsmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batsman" do
    assert_difference('Batsman.count') do
      post :create, batsman: { 4fours: @batsman.4fours, 6siz: @batsman.6siz, bestf: @batsman.bestf, fifty: @batsman.fifty, hights: @batsman.hights, hundred: @batsman.hundred, innings: @batsman.innings, nout: @batsman.nout, player_id: @batsman.player_id, runs: @batsman.runs, sr: @batsman.sr, zero: @batsman.zero }
    end

    assert_redirected_to batsman_path(assigns(:batsman))
  end

  test "should show batsman" do
    get :show, id: @batsman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batsman
    assert_response :success
  end

  test "should update batsman" do
    put :update, id: @batsman, batsman: { 4fours: @batsman.4fours, 6siz: @batsman.6siz, bestf: @batsman.bestf, fifty: @batsman.fifty, hights: @batsman.hights, hundred: @batsman.hundred, innings: @batsman.innings, nout: @batsman.nout, player_id: @batsman.player_id, runs: @batsman.runs, sr: @batsman.sr, zero: @batsman.zero }
    assert_redirected_to batsman_path(assigns(:batsman))
  end

  test "should destroy batsman" do
    assert_difference('Batsman.count', -1) do
      delete :destroy, id: @batsman
    end

    assert_redirected_to batsmen_path
  end
end
