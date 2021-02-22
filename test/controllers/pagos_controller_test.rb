require 'test_helper'

class PagosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagos_index_url
    assert_response :success
  end

  test "should get new" do
    get pagos_new_url
    assert_response :success
  end

  test "should get create" do
    get pagos_create_url
    assert_response :success
  end

  test "should get edit" do
    get pagos_edit_url
    assert_response :success
  end

  test "should get update" do
    get pagos_update_url
    assert_response :success
  end

end
