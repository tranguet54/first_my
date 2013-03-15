require 'test_helper'

class SecriesControllerTest < ActionController::TestCase
  setup do
    @secry = secries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secry" do
    assert_difference('Secry.count') do
      post :create, secry: { name: @secry.name, tuoi: @secry.tuoi }
    end

    assert_redirected_to secry_path(assigns(:secry))
  end

  test "should show secry" do
    get :show, id: @secry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secry
    assert_response :success
  end

  test "should update secry" do
    put :update, id: @secry, secry: { name: @secry.name, tuoi: @secry.tuoi }
    assert_redirected_to secry_path(assigns(:secry))
  end

  test "should destroy secry" do
    assert_difference('Secry.count', -1) do
      delete :destroy, id: @secry
    end

    assert_redirected_to secries_path
  end
end
