json.array!(@team_locations) do |team_location|
  json.infowindow "#{team_location.team.try(:name)} #{team_location_url(team_location, format: :json)}"
  json.lat team_location.latitude
  json.lng team_location.longitude
end
