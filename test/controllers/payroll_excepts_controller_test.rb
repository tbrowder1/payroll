require 'test_helper'

class PayrollExceptsControllerTest < ActionController::TestCase
  setup do
    @payroll_except = payroll_excepts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payroll_excepts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payroll_except" do
    assert_difference('PayrollExcept.count') do
      post :create, payroll_except: { name: @payroll_except.name }
    end

    assert_redirected_to payroll_except_path(assigns(:payroll_except))
  end

  test "should show payroll_except" do
    get :show, id: @payroll_except
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payroll_except
    assert_response :success
  end

  test "should update payroll_except" do
    patch :update, id: @payroll_except, payroll_except: { name: @payroll_except.name }
    assert_redirected_to payroll_except_path(assigns(:payroll_except))
  end

  test "should destroy payroll_except" do
    assert_difference('PayrollExcept.count', -1) do
      delete :destroy, id: @payroll_except
    end

    assert_redirected_to payroll_excepts_path
  end
end
