require "application_system_test_case"

class LendsTest < ApplicationSystemTestCase
  setup do
    @lend = lends(:one)
  end

  test "visiting the index" do
    visit lends_url
    assert_selector "h1", text: "Lends"
  end

  test "creating a Lend" do
    visit lends_url
    click_on "New Lend"

    fill_in "Loaned date", with: @lend.loaned_date
    fill_in "Loaned out", with: @lend.loaned_out
    fill_in "Name", with: @lend.name
    fill_in "Return date", with: @lend.return_date
    click_on "Create Lend"

    assert_text "Lend was successfully created"
    click_on "Back"
  end

  test "updating a Lend" do
    visit lends_url
    click_on "Edit", match: :first

    fill_in "Loaned date", with: @lend.loaned_date
    fill_in "Loaned out", with: @lend.loaned_out
    fill_in "Name", with: @lend.name
    fill_in "Return date", with: @lend.return_date
    click_on "Update Lend"

    assert_text "Lend was successfully updated"
    click_on "Back"
  end

  test "destroying a Lend" do
    visit lends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lend was successfully destroyed"
  end
end
