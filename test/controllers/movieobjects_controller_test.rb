require 'test_helper'

class MovieobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movieobject = movieobjects(:one)
  end

  test "should get index" do
    get movieobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_movieobject_url
    assert_response :success
  end

  test "should create movieobject" do
    assert_difference('Movieobject.count') do
      post movieobjects_url, params: { movieobject: { director: @movieobject.director, mid: @movieobject.mid, studio: @movieobject.studio } }
    end

    assert_redirected_to movieobject_url(Movieobject.last)
  end

  test "should show movieobject" do
    get movieobject_url(@movieobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_movieobject_url(@movieobject)
    assert_response :success
  end

  test "should update movieobject" do
    patch movieobject_url(@movieobject), params: { movieobject: { director: @movieobject.director, mid: @movieobject.mid, studio: @movieobject.studio } }
    assert_redirected_to movieobject_url(@movieobject)
  end

  test "should destroy movieobject" do
    assert_difference('Movieobject.count', -1) do
      delete movieobject_url(@movieobject)
    end

    assert_redirected_to movieobjects_url
  end
end
