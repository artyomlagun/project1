json.array!(@tasks) do |task|
  json.extract! task, :name, :description, :priority, :project_name
  json.url task_url(task, format: :json)
end
