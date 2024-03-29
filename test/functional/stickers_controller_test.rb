require 'test_helper'

class StickersControllerTest < ActionController::TestCase
  setup do
    @sticker = stickers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stickers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sticker" do
    assert_difference('Sticker.count') do
      post :create, sticker: {  }
    end

    assert_redirected_to sticker_path(assigns(:sticker))
  end

  test "should show sticker" do
    get :show, id: @sticker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sticker
    assert_response :success
  end

  test "should update sticker" do
    put :update, id: @sticker, sticker: {  }
    assert_redirected_to sticker_path(assigns(:sticker))
  end

  test "should destroy sticker" do
    assert_difference('Sticker.count', -1) do
      delete :destroy, id: @sticker
    end

    assert_redirected_to stickers_path
  end
end
