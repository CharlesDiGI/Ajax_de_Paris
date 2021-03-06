require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emails_index_url
    assert_response :success
  end

  test "should get edit" do
    get emails_edit_url
    assert_response :success
  end

  test "should get update" do
    get emails_update_url
    assert_response :success
  end

  test "should get delete" do
    get emails_delete_url
    assert_response :success
  end

end
