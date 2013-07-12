json.array!(@teams) do |team|
  json.extract! team, :name, :role
  json.url team_url(team, format: :json)
end
