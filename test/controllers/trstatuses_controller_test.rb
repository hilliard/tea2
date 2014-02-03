require 'test_helper'

class TrstatusesControllerTest < ActionController::TestCase
  setup do
    @trstatus = trstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trstatus" do
    assert_difference('Trstatus.count') do
      post :create, trstatus: { trstatusname: @trstatus.trname }
    end

    assert_redirected_to trstatus_path(assigns(:trstatus))
  end

  test "should show trstatus" do
    get :show, id: @trstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trstatus
    assert_response :success
  end

  test "should update trstatus" do
    patch :update, id: @trstatus, trstatus: { trstatusname: @trstatus.trname }
    assert_redirected_to trstatus_path(assigns(:trstatus))
  end

  test "should destroy trstatus" do
    assert_difference('Trstatus.count', -1) do
      delete :destroy, id: @trstatus
    end

    assert_redirected_to trstatuses_path
  end
end
