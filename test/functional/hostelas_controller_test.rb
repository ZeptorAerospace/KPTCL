require 'test_helper'

class HostelasControllerTest < ActionController::TestCase
  setup do
    @hostela = hostelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostela" do
    assert_difference('Hostela.count') do
      post :create, hostela: { entry_date: @hostela.entry_date, transformer_one: @hostela.transformer_one, transformer_three: @hostela.transformer_three, transformer_two: @hostela.transformer_two }
    end

    assert_redirected_to hostela_path(assigns(:hostela))
  end

  test "should show hostela" do
    get :show, id: @hostela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostela
    assert_response :success
  end

  test "should update hostela" do
    put :update, id: @hostela, hostela: { entry_date: @hostela.entry_date, transformer_one: @hostela.transformer_one, transformer_three: @hostela.transformer_three, transformer_two: @hostela.transformer_two }
    assert_redirected_to hostela_path(assigns(:hostela))
  end

  test "should destroy hostela" do
    assert_difference('Hostela.count', -1) do
      delete :destroy, id: @hostela
    end

    assert_redirected_to hostelas_path
  end
end
