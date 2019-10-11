require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "creating a Vendor" do
    visit vendors_url
    click_on "New Vendor"

    fill_in "First name", with: @vendor.first_name
    fill_in "Last name", with: @vendor.last_name
    fill_in "Notes", with: @vendor.notes
    fill_in "Region", with: @vendor.region
    fill_in "Shop", with: @vendor.shop_id
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "updating a Vendor" do
    visit vendors_url
    click_on "Edit", match: :first

    fill_in "First name", with: @vendor.first_name
    fill_in "Last name", with: @vendor.last_name
    fill_in "Notes", with: @vendor.notes
    fill_in "Region", with: @vendor.region
    fill_in "Shop", with: @vendor.shop_id
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor" do
    visit vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor was successfully destroyed"
  end
end
