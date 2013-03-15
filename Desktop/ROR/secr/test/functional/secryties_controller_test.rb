require 'test_helper'

class SecrytiesControllerTest < ActionController::TestCase
  setup do
    @secryty = secryties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secryties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secryty" do
    assert_difference('Secryty.count') do
      post :create, secryty: { cmt: @secryty.cmt, name: @secryty.name }
    end

    assert_redirected_to secryty_path(assigns(:secryty))
  end

  test "should show secryty" do
    get :show, id: @secryty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secryty
    assert_response :success
  end

  test "should update secryty" do
    put :update, id: @secryty, secryty: { cmt: @secryty.cmt, name: @secryty.name }
    assert_redirected_to secryty_path(assigns(:secryty))
  end

  test "should destroy secryty" do
    assert_difference('Secryty.count', -1) do
      delete :destroy, id: @secryty
    end

    assert_redirected_to secryties_path
  end
end
