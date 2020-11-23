require 'test_helper'

class WineStrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get wine_strains_new_url
    assert_response :success
  end

end
