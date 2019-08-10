require 'test_helper'

class HouseholdAccountBookControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get household_account_book_new_url
    assert_response :success
  end

end
