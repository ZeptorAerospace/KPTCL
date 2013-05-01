require 'test_helper'

class HostelnsControllerTest < ActionController::TestCase
  setup do
    @hosteln = hostelns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostelns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hosteln" do
    assert_difference('Hosteln.count') do
      post :create, hosteln: { entry_date: @hosteln.entry_date, transformer_one: @hosteln.transformer_one, transformer_two: @hosteln.transformer_two }
    end

    assert_redirected_to hosteln_path(assigns(:hosteln))
  end

  test "should show hosteln" do
    get :show, id: @hosteln
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hosteln
    assert_response :success
  end

  test "should update hosteln" do
    put :update, id: @hosteln, hosteln: { entry_date: @hosteln.entry_date, transformer_one: @hosteln.transformer_one, transformer_two: @hosteln.transformer_two }
    assert_redirected_to hosteln_path(assigns(:hosteln))
  end

  test "should destroy hosteln" do
    assert_difference('Hosteln.count', -1) do
      delete :destroy, id: @hosteln
    end

    assert_redirected_to hostelns_path
  end
end
