require "application_system_test_case"

class WatchBoxesTest < ApplicationSystemTestCase
  setup do
    @watch_box = watch_boxes(:one)
  end

  test "visiting the index" do
    visit watch_boxes_url
    assert_selector "h1", text: "Watch boxes"
  end

  test "should create watch box" do
    visit watch_boxes_url
    click_on "New watch box"

    fill_in "Avata", with: @watch_box.avata
    fill_in "Branch", with: @watch_box.branch
    fill_in "Description", with: @watch_box.description
    fill_in "Model", with: @watch_box.model
    fill_in "Price", with: @watch_box.price
    fill_in "Title", with: @watch_box.title
    click_on "Create Watch box"

    assert_text "Watch box was successfully created"
    click_on "Back"
  end

  test "should update Watch box" do
    visit watch_box_url(@watch_box)
    click_on "Edit this watch box", match: :first

    fill_in "Avata", with: @watch_box.avata
    fill_in "Branch", with: @watch_box.branch
    fill_in "Description", with: @watch_box.description
    fill_in "Model", with: @watch_box.model
    fill_in "Price", with: @watch_box.price
    fill_in "Title", with: @watch_box.title
    click_on "Update Watch box"

    assert_text "Watch box was successfully updated"
    click_on "Back"
  end

  test "should destroy Watch box" do
    visit watch_box_url(@watch_box)
    click_on "Destroy this watch box", match: :first

    assert_text "Watch box was successfully destroyed"
  end
end
