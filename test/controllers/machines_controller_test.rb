require 'test_helper'

class MachinesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  setup do
    @user = users(:one)
    @user.machines << machines(:one)
    @machine = @user.machines.first
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machines)
  end

  test "should get new" do
    get :new, user_id: @user.id
    assert_response :success
  end

  test "should create machine" do
    assert_difference('Machine.count') do
      post :create, user_id: @user.id, machine: { details: @machine.details, make: @machine.make, model: @machine.model, year: @machine.year }
    end

    assert_redirected_to machine_path(assigns(:machine))
  end

  test "should show machine" do
    get :show, id: @machine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine
    assert_response :success
  end

  test "should update machine" do
    patch :update, id: @machine, machine: { details: @machine.details, make: @machine.make, model: @machine.model, year: @machine.year }
    assert_redirected_to machine_path(assigns(:machine))
  end

  test "should destroy machine" do
    assert_difference('Machine.count', -1) do
      delete :destroy, id: @machine
    end

    assert_redirected_to user_machines_url(@user)
  end
end
