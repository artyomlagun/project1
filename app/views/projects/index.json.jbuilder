json.array!(@projects) do |project|
  json.extract! project, :name, :description, :deadline
  json.url project_url(project, format: :json)
end
