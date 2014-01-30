require 'test_helper'

class ReqdevstatusesControllerTest < ActionController::TestCase
  setup do
    @reqdevstatus = reqdevstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reqdevstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reqdevstatus" do
    assert_difference('Reqdevstatus.count') do
      post :create, reqdevstatus: { reqdevstatusname: @reqdevstatus.reqdevstatusname }
    end

    assert_redirected_to reqdevstatus_path(assigns(:reqdevstatus))
  end

  test "should show reqdevstatus" do
    get :show, id: @reqdevstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reqdevstatus
    assert_response :success
  end

  test "should update reqdevstatus" do
    patch :update, id: @reqdevstatus, reqdevstatus: { reqdevstatusname: @reqdevstatus.reqdevstatusname }
    assert_redirected_to reqdevstatus_path(assigns(:reqdevstatus))
  end

  test "should destroy reqdevstatus" do
    assert_difference('Reqdevstatus.count', -1) do
      delete :destroy, id: @reqdevstatus
    end

    assert_redirected_to reqdevstatuses_path
  end
end
