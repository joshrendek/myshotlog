require 'test_helper'

class RiflesControllerTest < ActionController::TestCase
  setup do
    @rifle = rifles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rifles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rifle" do
    assert_difference('Rifle.count') do
      post :create, :rifle => @rifle.attributes
    end

    assert_redirected_to rifle_path(assigns(:rifle))
  end

  test "should show rifle" do
    get :show, :id => @rifle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rifle.to_param
    assert_response :success
  end

  test "should update rifle" do
    put :update, :id => @rifle.to_param, :rifle => @rifle.attributes
    assert_redirected_to rifle_path(assigns(:rifle))
  end

  test "should destroy rifle" do
    assert_difference('Rifle.count', -1) do
      delete :destroy, :id => @rifle.to_param
    end

    assert_redirected_to rifles_path
  end
end
