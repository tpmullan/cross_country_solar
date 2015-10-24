require 'test_helper'

class TeamLocationsControllerTest < ActionController::TestCase
  setup do
    @team_location = team_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_location" do
    assert_difference('TeamLocation.count') do
      post :create, team_location: { address: @team_location.address, latitude: @team_location.latitude, longitude: @team_location.longitude, team_id: @team_location.team_id }
    end

    assert_redirected_to team_location_path(assigns(:team_location))
  end

  test "should show team_location" do
    get :show, id: @team_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_location
    assert_response :success
  end

  test "should update team_location" do
    patch :update, id: @team_location, team_location: { address: @team_location.address, latitude: @team_location.latitude, longitude: @team_location.longitude, team_id: @team_location.team_id }
    assert_redirected_to team_location_path(assigns(:team_location))
  end

  test "should destroy team_location" do
    assert_difference('TeamLocation.count', -1) do
      delete :destroy, id: @team_location
    end

    assert_redirected_to team_locations_path
  end
end
