json.array!(@statistics) do |statistic|
  json.extract! statistic, :date, :project_id, :task_id, :number
  json.url statistic_url(statistic, format: :json)
end
