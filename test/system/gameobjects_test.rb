require "application_system_test_case"

class GameobjectsTest < ApplicationSystemTestCase
  setup do
    @gameobject = gameobjects(:one)
  end

  test "visiting the index" do
    visit gameobjects_url
    assert_selector "h1", text: "Gameobjects"
  end

  test "creating a Gameobject" do
    visit gameobjects_url
    click_on "New Gameobject"

    fill_in "Developer", with: @gameobject.developer
    fill_in "Mid", with: @gameobject.mid
    fill_in "Platform", with: @gameobject.platform
    fill_in "Publisher", with: @gameobject.publisher
    click_on "Create Gameobject"

    assert_text "Gameobject was successfully created"
    click_on "Back"
  end

  test "updating a Gameobject" do
    visit gameobjects_url
    click_on "Edit", match: :first

    fill_in "Developer", with: @gameobject.developer
    fill_in "Mid", with: @gameobject.mid
    fill_in "Platform", with: @gameobject.platform
    fill_in "Publisher", with: @gameobject.publisher
    click_on "Update Gameobject"

    assert_text "Gameobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Gameobject" do
    visit gameobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gameobject was successfully destroyed"
  end
end
