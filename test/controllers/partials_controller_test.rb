require 'test_helper'

class PartialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partials_index_url
    assert_response :success
  end

  test "should get show" do
    get partials_show_url
    assert_response :success
  end

end
