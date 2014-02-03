require 'test_helper'

class TrrisksControllerTest < ActionController::TestCase
  setup do
    @trrisk = trrisks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trrisks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trrisk" do
    assert_difference('Trrisk.count') do
      post :create, trrisk: { trrisk: @trrisk.trrisk }
    end

    assert_redirected_to trrisk_path(assigns(:trrisk))
  end

  test "should show trrisk" do
    get :show, id: @trrisk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trrisk
    assert_response :success
  end

  test "should update trrisk" do
    patch :update, id: @trrisk, trrisk: { trrisk: @trrisk.trrisk }
    assert_redirected_to trrisk_path(assigns(:trrisk))
  end

  test "should destroy trrisk" do
    assert_difference('Trrisk.count', -1) do
      delete :destroy, id: @trrisk
    end

    assert_redirected_to trrisks_path
  end
end
