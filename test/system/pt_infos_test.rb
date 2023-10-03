require "application_system_test_case"

class PtInfosTest < ApplicationSystemTestCase
  setup do
    @pt_info = pt_infos(:one)
  end

  test "visiting the index" do
    visit pt_infos_url
    assert_selector "h1", text: "Pt infos"
  end

  test "should create pt info" do
    visit pt_infos_url
    click_on "New pt info"

    fill_in "About me", with: @pt_info.about_me
    fill_in "Clinic address", with: @pt_info.clinic_address
    fill_in "Email", with: @pt_info.email
    fill_in "Fax", with: @pt_info.fax
    check "Home visit" if @pt_info.home_visit
    fill_in "Npi number", with: @pt_info.npi_number
    fill_in "Phone number", with: @pt_info.phone_number
    fill_in "Post grad edu", with: @pt_info.post_grad_edu
    check "Telemedicine" if @pt_info.telemedicine
    click_on "Create Pt info"

    assert_text "Pt info was successfully created"
    click_on "Back"
  end

  test "should update Pt info" do
    visit pt_info_url(@pt_info)
    click_on "Edit this pt info", match: :first

    fill_in "About me", with: @pt_info.about_me
    fill_in "Clinic address", with: @pt_info.clinic_address
    fill_in "Email", with: @pt_info.email
    fill_in "Fax", with: @pt_info.fax
    check "Home visit" if @pt_info.home_visit
    fill_in "Npi number", with: @pt_info.npi_number
    fill_in "Phone number", with: @pt_info.phone_number
    fill_in "Post grad edu", with: @pt_info.post_grad_edu
    check "Telemedicine" if @pt_info.telemedicine
    click_on "Update Pt info"

    assert_text "Pt info was successfully updated"
    click_on "Back"
  end

  test "should destroy Pt info" do
    visit pt_info_url(@pt_info)
    click_on "Destroy this pt info", match: :first

    assert_text "Pt info was successfully destroyed"
  end
end
