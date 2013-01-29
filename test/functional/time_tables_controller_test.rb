require 'test_helper'

class TimeTablesControllerTest < ActionController::TestCase
  setup do
    @time_table = time_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_table" do
    assert_difference('TimeTable.count') do
      post :create, time_table: { fri: @time_table.fri, mon: @time_table.mon, sat: @time_table.sat, shift_events_id: @time_table.shift_events_id, sun: @time_table.sun, thur: @time_table.thur, tues: @time_table.tues, wed: @time_table.wed }
    end

    assert_redirected_to time_table_path(assigns(:time_table))
  end

  test "should show time_table" do
    get :show, id: @time_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_table
    assert_response :success
  end

  test "should update time_table" do
    put :update, id: @time_table, time_table: { fri: @time_table.fri, mon: @time_table.mon, sat: @time_table.sat, shift_events_id: @time_table.shift_events_id, sun: @time_table.sun, thur: @time_table.thur, tues: @time_table.tues, wed: @time_table.wed }
    assert_redirected_to time_table_path(assigns(:time_table))
  end

  test "should destroy time_table" do
    assert_difference('TimeTable.count', -1) do
      delete :destroy, id: @time_table
    end

    assert_redirected_to time_tables_path
  end
end
