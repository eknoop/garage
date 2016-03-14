require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  setup do
    @user = users(:one)
    @user.machines << machines(:one)
    @user.machines.first.expenses << expenses(:one)
    @machine = @user.machines.first
    @expense = @machine.expenses.first
    sign_in @user
  end

  test "should get new" do
    get :new, machine_id: @machine.id
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post :create, machine_id: @machine.id, expense: { cost: @expense.cost, description: @expense.description, purpose: @expense.purpose }
    end

    assert_redirected_to machine_path(@machine)
  end

  test "should get edit" do
    get :edit, id: @expense
    assert_response :success
  end

  test "should update expense" do
    patch :update, id: @expense, expense: { cost: @expense.cost, description: @expense.description, purpose: @expense.purpose }
    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete :destroy, id: @expense
    end

    assert_redirected_to machine_url(@expense.machine)
  end
end
