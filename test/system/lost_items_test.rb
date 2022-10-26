require "application_system_test_case"

class LostItemsTest < ApplicationSystemTestCase
  setup do
    @lost_item = lost_items(:one)
  end

  test "visiting the index" do
    visit lost_items_url
    assert_selector "h1", text: "Lost Items"
  end

  test "creating a Lost item" do
    visit lost_items_url
    click_on "New Lost Item"

    fill_in "Category", with: @lost_item.category
    fill_in "Date picked", with: @lost_item.date_picked
    fill_in "Feature", with: @lost_item.feature
    fill_in "Item name", with: @lost_item.item_name
    fill_in "Storage period", with: @lost_item.storage_period
    fill_in "Where picked", with: @lost_item.where_picked
    click_on "Create Lost item"

    assert_text "Lost item was successfully created"
    click_on "Back"
  end

  test "updating a Lost item" do
    visit lost_items_url
    click_on "Edit", match: :first

    fill_in "Category", with: @lost_item.category
    fill_in "Date picked", with: @lost_item.date_picked
    fill_in "Feature", with: @lost_item.feature
    fill_in "Item name", with: @lost_item.item_name
    fill_in "Storage period", with: @lost_item.storage_period
    fill_in "Where picked", with: @lost_item.where_picked
    click_on "Update Lost item"

    assert_text "Lost item was successfully updated"
    click_on "Back"
  end

  test "destroying a Lost item" do
    visit lost_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lost item was successfully destroyed"
  end
end
