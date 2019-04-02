require 'test_helper'

class GameobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameobject = gameobjects(:one)
  end

  test "should get index" do
    get gameobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_gameobject_url
    assert_response :success
  end

  test "should create gameobject" do
    assert_difference('Gameobject.count') do
      post gameobjects_url, params: { gameobject: { developer: @gameobject.developer, mid: @gameobject.mid, platform: @gameobject.platform, publisher: @gameobject.publisher } }
    end

    assert_redirected_to gameobject_url(Gameobject.last)
  end

  test "should show gameobject" do
    get gameobject_url(@gameobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_gameobject_url(@gameobject)
    assert_response :success
  end

  test "should update gameobject" do
    patch gameobject_url(@gameobject), params: { gameobject: { developer: @gameobject.developer, mid: @gameobject.mid, platform: @gameobject.platform, publisher: @gameobject.publisher } }
    assert_redirected_to gameobject_url(@gameobject)
  end

  test "should destroy gameobject" do
    assert_difference('Gameobject.count', -1) do
      delete gameobject_url(@gameobject)
    end

    assert_redirected_to gameobjects_url
  end
end
