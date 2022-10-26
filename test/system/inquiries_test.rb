require "application_system_test_case"

class InquiriesTest < ApplicationSystemTestCase
  setup do
    @inquiry = inquiries(:one)
  end

  test "visiting the index" do
    visit inquiries_url
    assert_selector "h1", text: "Inquiries"
  end

  test "creating a Inquiry" do
    visit inquiries_url
    click_on "New Inquiry"

    fill_in "Detail", with: @inquiry.detail
    fill_in "Matter", with: @inquiry.matter
    fill_in "Name", with: @inquiry.name
    click_on "Create Inquiry"

    assert_text "Inquiry was successfully created"
    click_on "Back"
  end

  test "updating a Inquiry" do
    visit inquiries_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @inquiry.detail
    fill_in "Matter", with: @inquiry.matter
    fill_in "Name", with: @inquiry.name
    click_on "Update Inquiry"

    assert_text "Inquiry was successfully updated"
    click_on "Back"
  end

  test "destroying a Inquiry" do
    visit inquiries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inquiry was successfully destroyed"
  end
end
