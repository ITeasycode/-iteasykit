require "test_helper"

class Admin::PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get admin_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_page_url
    assert_response :success
  end

  test "should create page" do
    assert_difference("Page.count") do
      post admin_pages_url, params: { page: {  } }
    end

    assert_redirected_to admin_page_url(Page.last)
  end

  test "should show page" do
    get admin_page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_page_url(@page)
    assert_response :success
  end

  test "should update page" do
    patch admin_page_url(@page), params: { page: {  } }
    assert_redirected_to admin_page_url(@page)
  end

  test "should destroy page" do
    assert_difference("Page.count", -1) do
      delete admin_page_url(@page)
    end

    assert_redirected_to admin_pages_url
  end
end
