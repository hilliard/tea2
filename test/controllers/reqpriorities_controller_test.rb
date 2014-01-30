require 'test_helper'

class ReqprioritiesControllerTest < ActionController::TestCase
  setup do
    @reqpriority = reqpriorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reqpriorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reqpriority" do
    assert_difference('Reqpriority.count') do
      post :create, reqpriority: { reqpriorityname: @reqpriority.reqpriorityname }
    end

    assert_redirected_to reqpriority_path(assigns(:reqpriority))
  end

  test "should show reqpriority" do
    get :show, id: @reqpriority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reqpriority
    assert_response :success
  end

  test "should update reqpriority" do
    patch :update, id: @reqpriority, reqpriority: { reqpriorityname: @reqpriority.reqpriorityname }
    assert_redirected_to reqpriority_path(assigns(:reqpriority))
  end

  test "should destroy reqpriority" do
    assert_difference('Reqpriority.count', -1) do
      delete :destroy, id: @reqpriority
    end

    assert_redirected_to reqpriorities_path
  end
end
