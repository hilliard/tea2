require 'test_helper'

class ReqstatusesControllerTest < ActionController::TestCase
  setup do
    @reqstatus = reqstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reqstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reqstatus" do
    assert_difference('Reqstatus.count') do
      post :create, reqstatus: { reqstatusname: @reqstatus.reqstatusname }
    end

    assert_redirected_to reqstatus_path(assigns(:reqstatus))
  end

  test "should show reqstatus" do
    get :show, id: @reqstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reqstatus
    assert_response :success
  end

  test "should update reqstatus" do
    patch :update, id: @reqstatus, reqstatus: { reqstatusname: @reqstatus.reqstatusname }
    assert_redirected_to reqstatus_path(assigns(:reqstatus))
  end

  test "should destroy reqstatus" do
    assert_difference('Reqstatus.count', -1) do
      delete :destroy, id: @reqstatus
    end

    assert_redirected_to reqstatuses_path
  end
end
