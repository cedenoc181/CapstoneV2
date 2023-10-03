require "test_helper"

class PtInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_info = pt_infos(:one)
  end

  test "should get index" do
    get pt_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_info_url
    assert_response :success
  end

  test "should create pt_info" do
    assert_difference("PtInfo.count") do
      post pt_infos_url, params: { pt_info: { about_me: @pt_info.about_me, clinic_address: @pt_info.clinic_address, email: @pt_info.email, fax: @pt_info.fax, home_visit: @pt_info.home_visit, npi_number: @pt_info.npi_number, phone_number: @pt_info.phone_number, post_grad_edu: @pt_info.post_grad_edu, telemedicine: @pt_info.telemedicine } }
    end

    assert_redirected_to pt_info_url(PtInfo.last)
  end

  test "should show pt_info" do
    get pt_info_url(@pt_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_info_url(@pt_info)
    assert_response :success
  end

  test "should update pt_info" do
    patch pt_info_url(@pt_info), params: { pt_info: { about_me: @pt_info.about_me, clinic_address: @pt_info.clinic_address, email: @pt_info.email, fax: @pt_info.fax, home_visit: @pt_info.home_visit, npi_number: @pt_info.npi_number, phone_number: @pt_info.phone_number, post_grad_edu: @pt_info.post_grad_edu, telemedicine: @pt_info.telemedicine } }
    assert_redirected_to pt_info_url(@pt_info)
  end

  test "should destroy pt_info" do
    assert_difference("PtInfo.count", -1) do
      delete pt_info_url(@pt_info)
    end

    assert_redirected_to pt_infos_url
  end
end
