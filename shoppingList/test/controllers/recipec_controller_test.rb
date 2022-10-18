require "test_helper"

class RecipecControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipec_new_url
    assert_response :success
  end
end
