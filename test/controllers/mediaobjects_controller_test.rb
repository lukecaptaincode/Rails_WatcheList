require 'test_helper'

class MediaobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mediaobject = mediaobjects(:one)
  end

  test "should get index" do
    get mediaobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_mediaobject_url
    assert_response :success
  end

  test "should create mediaobject" do
    assert_difference('Mediaobject.count') do
      post mediaobjects_url, params: { mediaobject: { genre: @mediaobject.genre, mid: @mediaobject.mid, releasedate: @mediaobject.releasedate, title: @mediaobject.title, uid: @mediaobject.uid } }
    end

    assert_redirected_to mediaobject_url(Mediaobject.last)
  end

  test "should show mediaobject" do
    get mediaobject_url(@mediaobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_mediaobject_url(@mediaobject)
    assert_response :success
  end

  test "should update mediaobject" do
    patch mediaobject_url(@mediaobject), params: { mediaobject: { genre: @mediaobject.genre, mid: @mediaobject.mid, releasedate: @mediaobject.releasedate, title: @mediaobject.title, uid: @mediaobject.uid } }
    assert_redirected_to mediaobject_url(@mediaobject)
  end

  test "should destroy mediaobject" do
    assert_difference('Mediaobject.count', -1) do
      delete mediaobject_url(@mediaobject)
    end

    assert_redirected_to mediaobjects_url
  end
end
