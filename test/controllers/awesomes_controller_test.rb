require 'test_helper'

class AwesomesControllerTest < ActionController::TestCase
  setup do
    @awesome = awesomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awesomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awesome" do
    assert_difference('Awesome.count') do
      post :create, awesome: { name: @awesome.name }
    end

    assert_redirected_to awesome_path(assigns(:awesome))
  end

  test "should show awesome" do
    get :show, id: @awesome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @awesome
    assert_response :success
  end

  test "should update awesome" do
    patch :update, id: @awesome, awesome: { name: @awesome.name }
    assert_redirected_to awesome_path(assigns(:awesome))
  end

  test "should destroy awesome" do
    assert_difference('Awesome.count', -1) do
      delete :destroy, id: @awesome
    end

    assert_redirected_to awesomes_path
  end
end
