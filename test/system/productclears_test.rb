require "application_system_test_case"

class ProductclearsTest < ApplicationSystemTestCase
  setup do
    @productclear = productclears(:one)
  end

  test "visiting the index" do
    visit productclears_url
    assert_selector "h1", text: "Productclears"
  end

  test "should create productclear" do
    visit productclears_url
    click_on "New productclear"

    click_on "Create Productclear"

    assert_text "Productclear was successfully created"
    click_on "Back"
  end

  test "should update Productclear" do
    visit productclear_url(@productclear)
    click_on "Edit this productclear", match: :first

    click_on "Update Productclear"

    assert_text "Productclear was successfully updated"
    click_on "Back"
  end

  test "should destroy Productclear" do
    visit productclear_url(@productclear)
    click_on "Destroy this productclear", match: :first

    assert_text "Productclear was successfully destroyed"
  end
end
