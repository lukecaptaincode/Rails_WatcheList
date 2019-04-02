require "application_system_test_case"

class BookobjectsTest < ApplicationSystemTestCase
  setup do
    @bookobject = bookobjects(:one)
  end

  test "visiting the index" do
    visit bookobjects_url
    assert_selector "h1", text: "Bookobjects"
  end

  test "creating a Bookobject" do
    visit bookobjects_url
    click_on "New Bookobject"

    fill_in "Author", with: @bookobject.author
    fill_in "Mid", with: @bookobject.mid
    fill_in "Publisher", with: @bookobject.publisher
    click_on "Create Bookobject"

    assert_text "Bookobject was successfully created"
    click_on "Back"
  end

  test "updating a Bookobject" do
    visit bookobjects_url
    click_on "Edit", match: :first

    fill_in "Author", with: @bookobject.author
    fill_in "Mid", with: @bookobject.mid
    fill_in "Publisher", with: @bookobject.publisher
    click_on "Update Bookobject"

    assert_text "Bookobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookobject" do
    visit bookobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookobject was successfully destroyed"
  end
end
