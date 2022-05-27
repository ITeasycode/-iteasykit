require "application_system_test_case"

class CellTypesTest < ApplicationSystemTestCase
  setup do
    @cell_type = cell_types(:one)
  end

  test "visiting the index" do
    visit cell_types_url
    assert_selector "h1", text: "Cell types"
  end

  test "should create cell type" do
    visit cell_types_url
    click_on "New cell type"

    click_on "Create Cell type"

    assert_text "Cell type was successfully created"
    click_on "Back"
  end

  test "should update Cell type" do
    visit cell_type_url(@cell_type)
    click_on "Edit this cell type", match: :first

    click_on "Update Cell type"

    assert_text "Cell type was successfully updated"
    click_on "Back"
  end

  test "should destroy Cell type" do
    visit cell_type_url(@cell_type)
    click_on "Destroy this cell type", match: :first

    assert_text "Cell type was successfully destroyed"
  end
end
