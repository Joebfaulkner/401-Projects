require "test_helper"

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipe_new_url
    assert_response :success
  end
end
