require 'test_helper'

class TcstatusesControllerTest < ActionController::TestCase
  setup do
    @tcstatus = tcstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tcstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tcstatus" do
    assert_difference('Tcstatus.count') do
      post :create, tcstatus: { tcstatusname: @tcstatus.tcstatusname }
    end

    assert_redirected_to tcstatus_path(assigns(:tcstatus))
  end

  test "should show tcstatus" do
    get :show, id: @tcstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tcstatus
    assert_response :success
  end

  test "should update tcstatus" do
    patch :update, id: @tcstatus, tcstatus: { tcstatusname: @tcstatus.tcstatusname }
    assert_redirected_to tcstatus_path(assigns(:tcstatus))
  end

  test "should destroy tcstatus" do
    assert_difference('Tcstatus.count', -1) do
      delete :destroy, id: @tcstatus
    end

    assert_redirected_to tcstatuses_path
  end
end
