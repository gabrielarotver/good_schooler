require 'test_helper'

class CodeSchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get code_schools_show_url
    assert_response :success
  end

end
