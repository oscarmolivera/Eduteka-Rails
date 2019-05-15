require 'test_helper'

class JavascriptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get javascripts_index_url
    assert_response :success
  end

end
