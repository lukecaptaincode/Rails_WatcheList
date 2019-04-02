require "application_system_test_case"

class MediaobjectsTest < ApplicationSystemTestCase
  setup do
    @mediaobject = mediaobjects(:one)
  end

  test "visiting the index" do
    visit mediaobjects_url
    assert_selector "h1", text: "Mediaobjects"
  end

  test "creating a Mediaobject" do
    visit mediaobjects_url
    click_on "New Mediaobject"

    fill_in "Genre", with: @mediaobject.genre
    fill_in "Mid", with: @mediaobject.mid
    fill_in "Releasedate", with: @mediaobject.releasedate
    fill_in "Title", with: @mediaobject.title
    fill_in "Uid", with: @mediaobject.uid
    click_on "Create Mediaobject"

    assert_text "Mediaobject was successfully created"
    click_on "Back"
  end

  test "updating a Mediaobject" do
    visit mediaobjects_url
    click_on "Edit", match: :first

    fill_in "Genre", with: @mediaobject.genre
    fill_in "Mid", with: @mediaobject.mid
    fill_in "Releasedate", with: @mediaobject.releasedate
    fill_in "Title", with: @mediaobject.title
    fill_in "Uid", with: @mediaobject.uid
    click_on "Update Mediaobject"

    assert_text "Mediaobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Mediaobject" do
    visit mediaobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mediaobject was successfully destroyed"
  end
end
