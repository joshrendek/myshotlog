require 'test_helper'

class RangeDaysControllerTest < ActionController::TestCase
  setup do
    @range_day = range_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:range_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create range_day" do
    assert_difference('RangeDay.count') do
      post :create, :range_day => @range_day.attributes
    end

    assert_redirected_to range_day_path(assigns(:range_day))
  end

  test "should show range_day" do
    get :show, :id => @range_day.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @range_day.to_param
    assert_response :success
  end

  test "should update range_day" do
    put :update, :id => @range_day.to_param, :range_day => @range_day.attributes
    assert_redirected_to range_day_path(assigns(:range_day))
  end

  test "should destroy range_day" do
    assert_difference('RangeDay.count', -1) do
      delete :destroy, :id => @range_day.to_param
    end

    assert_redirected_to range_days_path
  end
end
