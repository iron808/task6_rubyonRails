require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get timeline" do
    get schedules_timeline_url
    assert_response :success
  end
end
