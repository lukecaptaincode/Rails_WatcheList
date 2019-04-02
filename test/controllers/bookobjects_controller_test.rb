require 'test_helper'

class BookobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookobject = bookobjects(:one)
  end

  test "should get index" do
    get bookobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_bookobject_url
    assert_response :success
  end

  test "should create bookobject" do
    assert_difference('Bookobject.count') do
      post bookobjects_url, params: { bookobject: { author: @bookobject.author, mid: @bookobject.mid, publisher: @bookobject.publisher } }
    end

    assert_redirected_to bookobject_url(Bookobject.last)
  end

  test "should show bookobject" do
    get bookobject_url(@bookobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookobject_url(@bookobject)
    assert_response :success
  end

  test "should update bookobject" do
    patch bookobject_url(@bookobject), params: { bookobject: { author: @bookobject.author, mid: @bookobject.mid, publisher: @bookobject.publisher } }
    assert_redirected_to bookobject_url(@bookobject)
  end

  test "should destroy bookobject" do
    assert_difference('Bookobject.count', -1) do
      delete bookobject_url(@bookobject)
    end

    assert_redirected_to bookobjects_url
  end
end
