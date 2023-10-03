require "application_system_test_case"

class UsersInfosTest < ApplicationSystemTestCase
  setup do
    @users_info = users_infos(:one)
  end

  test "visiting the index" do
    visit users_infos_url
    assert_selector "h1", text: "Users infos"
  end

  test "should create users info" do
    visit users_infos_url
    click_on "New users info"

    fill_in "Dob", with: @users_info.DOB
    fill_in "Address", with: @users_info.address
    fill_in "City", with: @users_info.city
    fill_in "Insurance", with: @users_info.insurance
    fill_in "Insurance", with: @users_info.insurance_id
    fill_in "Phone number", with: @users_info.phone_number
    fill_in "State", with: @users_info.state
    click_on "Create Users info"

    assert_text "Users info was successfully created"
    click_on "Back"
  end

  test "should update Users info" do
    visit users_info_url(@users_info)
    click_on "Edit this users info", match: :first

    fill_in "Dob", with: @users_info.DOB
    fill_in "Address", with: @users_info.address
    fill_in "City", with: @users_info.city
    fill_in "Insurance", with: @users_info.insurance
    fill_in "Insurance", with: @users_info.insurance_id
    fill_in "Phone number", with: @users_info.phone_number
    fill_in "State", with: @users_info.state
    click_on "Update Users info"

    assert_text "Users info was successfully updated"
    click_on "Back"
  end

  test "should destroy Users info" do
    visit users_info_url(@users_info)
    click_on "Destroy this users info", match: :first

    assert_text "Users info was successfully destroyed"
  end
end
