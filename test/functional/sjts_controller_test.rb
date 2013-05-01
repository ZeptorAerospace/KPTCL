require 'test_helper'

class SjtsControllerTest < ActionController::TestCase
  setup do
    @sjt = sjts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sjts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sjt" do
    assert_difference('Sjt.count') do
      post :create, sjt: { entry_date: @sjt.entry_date, transformer_one: @sjt.transformer_one, transformer_two: @sjt.transformer_two }
    end

    assert_redirected_to sjt_path(assigns(:sjt))
  end

  test "should show sjt" do
    get :show, id: @sjt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sjt
    assert_response :success
  end

  test "should update sjt" do
    put :update, id: @sjt, sjt: { entry_date: @sjt.entry_date, transformer_one: @sjt.transformer_one, transformer_two: @sjt.transformer_two }
    assert_redirected_to sjt_path(assigns(:sjt))
  end

  test "should destroy sjt" do
    assert_difference('Sjt.count', -1) do
      delete :destroy, id: @sjt
    end

    assert_redirected_to sjts_path
  end
end
