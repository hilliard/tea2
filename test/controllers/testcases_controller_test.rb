require 'test_helper'

class TestcasesControllerTest < ActionController::TestCase
  setup do
    @testcase = testcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testcase" do
    assert_difference('Testcase.count') do
      post :create, testcase: { tcactive: @testcase.tcactive, tcauthor: @testcase.tcauthor, tcdata: @testcase.tcdata, tcdescription: @testcase.tcdescription, tcexecdate: @testcase.tcexecdate, tcexpectedresults: @testcase.tcexpectedresults, tcmodifiedby: @testcase.tcmodifiedby, tcpostcondition: @testcase.tcpostcondition, tcprecondition: @testcase.tcprecondition, tcreqreference: @testcase.tcreqreference, tcstarttime: @testcase.tcstarttime, tcstatus: @testcase.tcstatus, tcstep: @testcase.tcstep, tcstoptime: @testcase.tcstoptime, tcsubsystem: @testcase.tcsubsystem, tctitle: @testcase.tctitle }
    end

    assert_redirected_to testcase_path(assigns(:testcase))
  end

  test "should show testcase" do
    get :show, id: @testcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testcase
    assert_response :success
  end

  test "should update testcase" do
    patch :update, id: @testcase, testcase: { tcactive: @testcase.tcactive, tcauthor: @testcase.tcauthor, tcdata: @testcase.tcdata, tcdescription: @testcase.tcdescription, tcexecdate: @testcase.tcexecdate, tcexpectedresults: @testcase.tcexpectedresults, tcmodifiedby: @testcase.tcmodifiedby, tcpostcondition: @testcase.tcpostcondition, tcprecondition: @testcase.tcprecondition, tcreqreference: @testcase.tcreqreference, tcstarttime: @testcase.tcstarttime, tcstatus: @testcase.tcstatus, tcstep: @testcase.tcstep, tcstoptime: @testcase.tcstoptime, tcsubsystem: @testcase.tcsubsystem, tctitle: @testcase.tctitle }
    assert_redirected_to testcase_path(assigns(:testcase))
  end

  test "should destroy testcase" do
    assert_difference('Testcase.count', -1) do
      delete :destroy, id: @testcase
    end

    assert_redirected_to testcases_path
  end
end
