require 'test_helper'

class User::SubmitControllerTest < ActionController::TestCase
  test "should get submit_file" do
    get :submit_file
    assert_response :success
  end

end
