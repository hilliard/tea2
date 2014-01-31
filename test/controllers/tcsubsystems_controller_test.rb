require 'test_helper'

class TcsubsystemsControllerTest < ActionController::TestCase
  setup do
    @tcsubsystem = tcsubsystems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tcsubsystems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tcsubsystem" do
    assert_difference('Tcsubsystem.count') do
      post :create, tcsubsystem: { tcsubsystemname: @tcsubsystem.tcsubsystemname }
    end

    assert_redirected_to tcsubsystem_path(assigns(:tcsubsystem))
  end

  test "should show tcsubsystem" do
    get :show, id: @tcsubsystem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tcsubsystem
    assert_response :success
  end

  test "should update tcsubsystem" do
    patch :update, id: @tcsubsystem, tcsubsystem: { tcsubsystemname: @tcsubsystem.tcsubsystemname }
    assert_redirected_to tcsubsystem_path(assigns(:tcsubsystem))
  end

  test "should destroy tcsubsystem" do
    assert_difference('Tcsubsystem.count', -1) do
      delete :destroy, id: @tcsubsystem
    end

    assert_redirected_to tcsubsystems_path
  end
end
