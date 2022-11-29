require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "should create activity" do
    visit activities_url
    click_on "New activity"

    check "Booking" if @activity.booking
    fill_in "Description", with: @activity.description
    fill_in "End", with: @activity.end
    check "Free" if @activity.free
    fill_in "Image", with: @activity.image
    fill_in "Location", with: @activity.location
    fill_in "Name", with: @activity.name
    fill_in "Price", with: @activity.price
    fill_in "Review", with: @activity.review_id
    fill_in "Start", with: @activity.start
    fill_in "Tag", with: @activity.tag
    fill_in "User", with: @activity.user_id
    fill_in "Venue", with: @activity.venue
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "should update Activity" do
    visit activity_url(@activity)
    click_on "Edit this activity", match: :first

    check "Booking" if @activity.booking
    fill_in "Description", with: @activity.description
    fill_in "End", with: @activity.end
    check "Free" if @activity.free
    fill_in "Image", with: @activity.image
    fill_in "Location", with: @activity.location
    fill_in "Name", with: @activity.name
    fill_in "Price", with: @activity.price
    fill_in "Review", with: @activity.review_id
    fill_in "Start", with: @activity.start
    fill_in "Tag", with: @activity.tag
    fill_in "User", with: @activity.user_id
    fill_in "Venue", with: @activity.venue
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "should destroy Activity" do
    visit activity_url(@activity)
    click_on "Destroy this activity", match: :first

    assert_text "Activity was successfully destroyed"
  end
end
