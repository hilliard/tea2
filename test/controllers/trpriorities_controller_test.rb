require 'test_helper'

class TrprioritiesControllerTest < ActionController::TestCase
  setup do
    @trpriority = trpriorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trpriorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trpriority" do
    assert_difference('Trpriority.count') do
      post :create, trpriority: { trpriority: @trpriority.trpriority }
    end

    assert_redirected_to trpriority_path(assigns(:trpriority))
  end

  test "should show trpriority" do
    get :show, id: @trpriority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trpriority
    assert_response :success
  end

  test "should update trpriority" do
    patch :update, id: @trpriority, trpriority: { trpriority: @trpriority.trpriority }
    assert_redirected_to trpriority_path(assigns(:trpriority))
  end

  test "should destroy trpriority" do
    assert_difference('Trpriority.count', -1) do
      delete :destroy, id: @trpriority
    end

    assert_redirected_to trpriorities_path
  end
end
