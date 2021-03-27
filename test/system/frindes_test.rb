require "application_system_test_case"

class FrindesTest < ApplicationSystemTestCase
  setup do
    @frinde = frindes(:one)
  end

  test "visiting the index" do
    visit frindes_url
    assert_selector "h1", text: "Frindes"
  end

  test "creating a Frinde" do
    visit frindes_url
    click_on "New Frinde"

    fill_in "Email", with: @frinde.email
    fill_in "First name", with: @frinde.first_name
    fill_in "Last name", with: @frinde.last_name
    fill_in "Phone", with: @frinde.phone
    fill_in "Twitter", with: @frinde.twitter
    click_on "Create Frinde"

    assert_text "Frinde was successfully created"
    click_on "Back"
  end

  test "updating a Frinde" do
    visit frindes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @frinde.email
    fill_in "First name", with: @frinde.first_name
    fill_in "Last name", with: @frinde.last_name
    fill_in "Phone", with: @frinde.phone
    fill_in "Twitter", with: @frinde.twitter
    click_on "Update Frinde"

    assert_text "Frinde was successfully updated"
    click_on "Back"
  end

  test "destroying a Frinde" do
    visit frindes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frinde was successfully destroyed"
  end
end
