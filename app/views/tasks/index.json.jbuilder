json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :id
  json.url task_url(task, format: :json)
end
