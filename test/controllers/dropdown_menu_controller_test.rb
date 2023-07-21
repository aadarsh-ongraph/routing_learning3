require "test_helper"

class DropdownMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dropdown_menu_index_url
    assert_response :success
  end

  test "should get about" do
    get dropdown_menu_about_url
    assert_response :success
  end

  test "should get contact" do
    get dropdown_menu_contact_url
    assert_response :success
  end
end
