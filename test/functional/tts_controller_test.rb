require 'test_helper'

class TtsControllerTest < ActionController::TestCase
  setup do
    @tt = tts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tt" do
    assert_difference('Tt.count') do
      post :create, tt: { entry_date: @tt.entry_date, transformer_one: @tt.transformer_one, transformer_two: @tt.transformer_two }
    end

    assert_redirected_to tt_path(assigns(:tt))
  end

  test "should show tt" do
    get :show, id: @tt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tt
    assert_response :success
  end

  test "should update tt" do
    put :update, id: @tt, tt: { entry_date: @tt.entry_date, transformer_one: @tt.transformer_one, transformer_two: @tt.transformer_two }
    assert_redirected_to tt_path(assigns(:tt))
  end

  test "should destroy tt" do
    assert_difference('Tt.count', -1) do
      delete :destroy, id: @tt
    end

    assert_redirected_to tts_path
  end
end
