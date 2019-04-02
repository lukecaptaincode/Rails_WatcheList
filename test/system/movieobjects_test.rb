require "application_system_test_case"

class MovieobjectsTest < ApplicationSystemTestCase
  setup do
    @movieobject = movieobjects(:one)
  end

  test "visiting the index" do
    visit movieobjects_url
    assert_selector "h1", text: "Movieobjects"
  end

  test "creating a Movieobject" do
    visit movieobjects_url
    click_on "New Movieobject"

    fill_in "Director", with: @movieobject.director
    fill_in "Mid", with: @movieobject.mid
    fill_in "Studio", with: @movieobject.studio
    click_on "Create Movieobject"

    assert_text "Movieobject was successfully created"
    click_on "Back"
  end

  test "updating a Movieobject" do
    visit movieobjects_url
    click_on "Edit", match: :first

    fill_in "Director", with: @movieobject.director
    fill_in "Mid", with: @movieobject.mid
    fill_in "Studio", with: @movieobject.studio
    click_on "Update Movieobject"

    assert_text "Movieobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Movieobject" do
    visit movieobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movieobject was successfully destroyed"
  end
end
