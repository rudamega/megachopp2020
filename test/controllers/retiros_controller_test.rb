require 'test_helper'

class RetirosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get retiros_index_url
    assert_response :success
  end

end
