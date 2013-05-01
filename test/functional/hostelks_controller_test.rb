require 'test_helper'

class HostelksControllerTest < ActionController::TestCase
  setup do
    @hostelk = hostelks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostelks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostelk" do
    assert_difference('Hostelk.count') do
      post :create, hostelk: { entry_date: @hostelk.entry_date, transformer_one: @hostelk.transformer_one, transformer_two: @hostelk.transformer_two }
    end

    assert_redirected_to hostelk_path(assigns(:hostelk))
  end

  test "should show hostelk" do
    get :show, id: @hostelk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostelk
    assert_response :success
  end

  test "should update hostelk" do
    put :update, id: @hostelk, hostelk: { entry_date: @hostelk.entry_date, transformer_one: @hostelk.transformer_one, transformer_two: @hostelk.transformer_two }
    assert_redirected_to hostelk_path(assigns(:hostelk))
  end

  test "should destroy hostelk" do
    assert_difference('Hostelk.count', -1) do
      delete :destroy, id: @hostelk
    end

    assert_redirected_to hostelks_path
  end
end
