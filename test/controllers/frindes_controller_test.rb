require "test_helper"

class FrindesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frinde = frindes(:one)
  end

  test "should get index" do
    get frindes_url
    assert_response :success
  end

  test "should get new" do
    get new_frinde_url
    assert_response :success
  end

  test "should create frinde" do
    assert_difference('Frinde.count') do
      post frindes_url, params: { frinde: { email: @frinde.email, first_name: @frinde.first_name, last_name: @frinde.last_name, phone: @frinde.phone, twitter: @frinde.twitter } }
    end

    assert_redirected_to frinde_url(Frinde.last)
  end

  test "should show frinde" do
    get frinde_url(@frinde)
    assert_response :success
  end

  test "should get edit" do
    get edit_frinde_url(@frinde)
    assert_response :success
  end

  test "should update frinde" do
    patch frinde_url(@frinde), params: { frinde: { email: @frinde.email, first_name: @frinde.first_name, last_name: @frinde.last_name, phone: @frinde.phone, twitter: @frinde.twitter } }
    assert_redirected_to frinde_url(@frinde)
  end

  test "should destroy frinde" do
    assert_difference('Frinde.count', -1) do
      delete frinde_url(@frinde)
    end

    assert_redirected_to frindes_url
  end
end
