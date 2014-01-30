require 'test_helper'

class ReqdifficultiesControllerTest < ActionController::TestCase
  setup do
    @reqdifficulty = reqdifficulties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reqdifficulties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reqdifficulty" do
    assert_difference('Reqdifficulty.count') do
      post :create, reqdifficulty: { reqdifficultyname: @reqdifficulty.reqdifficultyname }
    end

    assert_redirected_to reqdifficulty_path(assigns(:reqdifficulty))
  end

  test "should show reqdifficulty" do
    get :show, id: @reqdifficulty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reqdifficulty
    assert_response :success
  end

  test "should update reqdifficulty" do
    patch :update, id: @reqdifficulty, reqdifficulty: { reqdifficultyname: @reqdifficulty.reqdifficultyname }
    assert_redirected_to reqdifficulty_path(assigns(:reqdifficulty))
  end

  test "should destroy reqdifficulty" do
    assert_difference('Reqdifficulty.count', -1) do
      delete :destroy, id: @reqdifficulty
    end

    assert_redirected_to reqdifficulties_path
  end
end
