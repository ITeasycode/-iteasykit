require "test_helper"

class Admin::CellTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell_type = cell_types(:one)
  end

  test "should get index" do
    get admin_cell_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_cell_type_url
    assert_response :success
  end

  test "should create cell_type" do
    assert_difference("CellType.count") do
      post admin_cell_types_url, params: { cell_type: {  } }
    end

    assert_redirected_to admin_cell_type_url(CellType.last)
  end

  test "should show cell_type" do
    get admin_cell_type_url(@cell_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_cell_type_url(@cell_type)
    assert_response :success
  end

  test "should update cell_type" do
    patch admin_cell_type_url(@cell_type), params: { cell_type: {  } }
    assert_redirected_to admin_cell_type_url(@cell_type)
  end

  test "should destroy cell_type" do
    assert_difference("CellType.count", -1) do
      delete admin_cell_type_url(@cell_type)
    end

    assert_redirected_to admin_cell_types_url
  end
end
