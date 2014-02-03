require 'test_helper'

class TestrunsControllerTest < ActionController::TestCase
  setup do
    @testrun = testruns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testruns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testrun" do
    assert_difference('Testrun.count') do
      post :create, testrun: { testcase_id: @testrun.testcase_id, tester: @testrun.tester, testtype: @testrun.testtype, trbrowser: @testrun.trbrowser, trdescription: @testrun.trdescription, trexecdate: @testrun.trexecdate, trfeature: @testrun.trfeature, trname: @testrun.trname, tros: @testrun.tros, trpriority: @testrun.trpriority, trrequirement: @testrun.trrequirement, trrisk: @testrun.trrisk, trstart: @testrun.trstart, trstatus: @testrun.trstatus, trstop: @testrun.trstop, trtrackid: @testrun.trtrackid }
    end

    assert_redirected_to testrun_path(assigns(:testrun))
  end

  test "should show testrun" do
    get :show, id: @testrun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testrun
    assert_response :success
  end

  test "should update testrun" do
    patch :update, id: @testrun, testrun: { testcase_id: @testrun.testcase_id, tester: @testrun.tester, testtype: @testrun.testtype, trbrowser: @testrun.trbrowser, trdescription: @testrun.trdescription, trexecdate: @testrun.trexecdate, trfeature: @testrun.trfeature, trname: @testrun.trname, tros: @testrun.tros, trpriority: @testrun.trpriority, trrequirement: @testrun.trrequirement, trrisk: @testrun.trrisk, trstart: @testrun.trstart, trstatus: @testrun.trstatus, trstop: @testrun.trstop, trtrackid: @testrun.trtrackid }
    assert_redirected_to testrun_path(assigns(:testrun))
  end

  test "should destroy testrun" do
    assert_difference('Testrun.count', -1) do
      delete :destroy, id: @testrun
    end

    assert_redirected_to testruns_path
  end
end
