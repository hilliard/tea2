require 'test_helper'

class TrsubsytemsControllerTest < ActionController::TestCase
  setup do
    @trsubsytem = trsubsytems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trsubsytems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trsubsytem" do
    assert_difference('Trsubsytem.count') do
      post :create, trsubsytem: { trsubname: @trsubsytem.trsubname }
    end

    assert_redirected_to trsubsytem_path(assigns(:trsubsytem))
  end

  test "should show trsubsytem" do
    get :show, id: @trsubsytem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trsubsytem
    assert_response :success
  end

  test "should update trsubsytem" do
    patch :update, id: @trsubsytem, trsubsytem: { trsubname: @trsubsytem.trsubname }
    assert_redirected_to trsubsytem_path(assigns(:trsubsytem))
  end

  test "should destroy trsubsytem" do
    assert_difference('Trsubsytem.count', -1) do
      delete :destroy, id: @trsubsytem
    end

    assert_redirected_to trsubsytems_path
  end
end
