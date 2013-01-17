require 'test_helper'

class ShiftEventsControllerTest < ActionController::TestCase
  setup do
    @shift_event = shift_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shift_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift_event" do
    assert_difference('ShiftEvent.count') do
      post :create, shift_event: { admin_email: @shift_event.admin_email, admin_name: @shift_event.admin_name, location: @shift_event.location, organization: @shift_event.organization, title: @shift_event.title }
    end

    assert_redirected_to shift_event_path(assigns(:shift_event))
  end

  test "should show shift_event" do
    get :show, id: @shift_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift_event
    assert_response :success
  end

  test "should update shift_event" do
    put :update, id: @shift_event, shift_event: { admin_email: @shift_event.admin_email, admin_name: @shift_event.admin_name, location: @shift_event.location, organization: @shift_event.organization, title: @shift_event.title }
    assert_redirected_to shift_event_path(assigns(:shift_event))
  end

  test "should destroy shift_event" do
    assert_difference('ShiftEvent.count', -1) do
      delete :destroy, id: @shift_event
    end

    assert_redirected_to shift_events_path
  end
end
