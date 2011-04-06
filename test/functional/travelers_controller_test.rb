require 'test_helper'

class TravelersControllerTest < ActionController::TestCase
  setup do
    @traveler = travelers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travelers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traveler" do
    assert_difference('Traveler.count') do
      post :create, :traveler => @traveler.attributes
    end

    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should show traveler" do
    get :show, :id => @traveler.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @traveler.to_param
    assert_response :success
  end

  test "should update traveler" do
    put :update, :id => @traveler.to_param, :traveler => @traveler.attributes
    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should destroy traveler" do
    assert_difference('Traveler.count', -1) do
      delete :destroy, :id => @traveler.to_param
    end

    assert_redirected_to travelers_path
  end
end
