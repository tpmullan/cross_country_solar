json.array!(@team_locations) do |team_location|
  json.infowindow "#{team_location.team.try(:number)} #{team_location.team.try(:name)}"
  json.lat team_location.latitude
  json.lng team_location.longitude
end
