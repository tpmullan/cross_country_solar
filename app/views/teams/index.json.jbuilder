json.array!(@teams) do |team|
  json.extract! team, :id, :name, :year, :number, :school
  json.url team_url(team, format: :json)
end
