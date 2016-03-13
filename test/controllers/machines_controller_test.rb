require 'test_helper'

class MachinesControllerTest < ActionController::TestCase
  setup do
    @machine = machines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine" do
    assert_difference('Machine.count') do
      post :create, machine: { details: @machine.details, make: @machine.make, model: @machine.model, year: @machine.year }
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

    assert_redirected_to machines_path
  end
end
