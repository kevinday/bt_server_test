require 'test_helper'

class BraintreeTasksControllerTest < ActionController::TestCase
  test "should get client_token" do
    get :client_token
    assert_response :success
  end

end
