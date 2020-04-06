require "application_system_test_case"

class AssociationsTest < ApplicationSystemTestCase
  setup do
    @association = associations(:one)
  end

  test "visiting the index" do
    visit associations_url
    assert_selector "h1", text: "Associations"
  end

  test "creating a Association" do
    visit associations_url
    click_on "New Association"

    fill_in "Address", with: @association.address
    fill_in "City", with: @association.city
    fill_in "Email", with: @association.email
    fill_in "Lat", with: @association.lat
    fill_in "Long", with: @association.long
    fill_in "Members", with: @association.members
    fill_in "Name", with: @association.name
    fill_in "Phone", with: @association.phone
    fill_in "Zipcode", with: @association.zipcode
    click_on "Create Association"

    assert_text "Association was successfully created"
    click_on "Back"
  end

  test "updating a Association" do
    visit associations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @association.address
    fill_in "City", with: @association.city
    fill_in "Email", with: @association.email
    fill_in "Lat", with: @association.lat
    fill_in "Long", with: @association.long
    fill_in "Members", with: @association.members
    fill_in "Name", with: @association.name
    fill_in "Phone", with: @association.phone
    fill_in "Zipcode", with: @association.zipcode
    click_on "Update Association"

    assert_text "Association was successfully updated"
    click_on "Back"
  end

  test "destroying a Association" do
    visit associations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Association was successfully destroyed"
  end
end
