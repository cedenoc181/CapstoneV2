require "test_helper"

class UsersInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_info = users_infos(:one)
  end

  test "should get index" do
    get users_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_users_info_url
    assert_response :success
  end

  test "should create users_info" do
    assert_difference("UsersInfo.count") do
      post users_infos_url, params: { users_info: { DOB: @users_info.DOB, address: @users_info.address, city: @users_info.city, insurance: @users_info.insurance, insurance_id: @users_info.insurance_id, phone_number: @users_info.phone_number, state: @users_info.state } }
    end

    assert_redirected_to users_info_url(UsersInfo.last)
  end

  test "should show users_info" do
    get users_info_url(@users_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_info_url(@users_info)
    assert_response :success
  end

  test "should update users_info" do
    patch users_info_url(@users_info), params: { users_info: { DOB: @users_info.DOB, address: @users_info.address, city: @users_info.city, insurance: @users_info.insurance, insurance_id: @users_info.insurance_id, phone_number: @users_info.phone_number, state: @users_info.state } }
    assert_redirected_to users_info_url(@users_info)
  end

  test "should destroy users_info" do
    assert_difference("UsersInfo.count", -1) do
      delete users_info_url(@users_info)
    end

    assert_redirected_to users_infos_url
  end
end
