require "application_system_test_case"

class UserActivitiesTest < ApplicationSystemTestCase
  setup do
    @user_activity = user_activities(:one)
  end

  test "visiting the index" do
    visit user_activities_url
    assert_selector "h1", text: "User activities"
  end

  test "should create user activity" do
    visit user_activities_url
    click_on "New user activity"

    fill_in "Activity", with: @user_activity.activity_id
    fill_in "User", with: @user_activity.user_id
    click_on "Create User activity"

    assert_text "User activity was successfully created"
    click_on "Back"
  end

  test "should update User activity" do
    visit user_activity_url(@user_activity)
    click_on "Edit this user activity", match: :first

    fill_in "Activity", with: @user_activity.activity_id
    fill_in "User", with: @user_activity.user_id
    click_on "Update User activity"

    assert_text "User activity was successfully updated"
    click_on "Back"
  end

  test "should destroy User activity" do
    visit user_activity_url(@user_activity)
    click_on "Destroy this user activity", match: :first

    assert_text "User activity was successfully destroyed"
  end
end
