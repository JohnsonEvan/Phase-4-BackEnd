require "application_system_test_case"

class CeosTest < ApplicationSystemTestCase
  setup do
    @ceo = ceos(:one)
  end

  test "visiting the index" do
    visit ceos_url
    assert_selector "h1", text: "Ceos"
  end

  test "should create ceo" do
    visit ceos_url
    click_on "New ceo"

    fill_in "Compnay name", with: @ceo.compnay_name
    fill_in "Date of birth", with: @ceo.date_of_birth
    fill_in "Name", with: @ceo.name
    fill_in "Position", with: @ceo.position
    fill_in "Salary", with: @ceo.salary
    click_on "Create Ceo"

    assert_text "Ceo was successfully created"
    click_on "Back"
  end

  test "should update Ceo" do
    visit ceo_url(@ceo)
    click_on "Edit this ceo", match: :first

    fill_in "Compnay name", with: @ceo.compnay_name
    fill_in "Date of birth", with: @ceo.date_of_birth
    fill_in "Name", with: @ceo.name
    fill_in "Position", with: @ceo.position
    fill_in "Salary", with: @ceo.salary
    click_on "Update Ceo"

    assert_text "Ceo was successfully updated"
    click_on "Back"
  end

  test "should destroy Ceo" do
    visit ceo_url(@ceo)
    click_on "Destroy this ceo", match: :first

    assert_text "Ceo was successfully destroyed"
  end
end
