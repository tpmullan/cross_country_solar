json.array!(@team_locations) do |team_location|
  json.picture  url: image_url("#{team_location.team.try(:number)}.png"), width:  25, height: 25
  
  json.infowindow "#{team_location.team.try(:number)}: #{team_location.team.try(:name)}"
  json.lat team_location.latitude
  json.lng team_location.longitude
end
