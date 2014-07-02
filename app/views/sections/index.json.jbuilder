json.array!(@sections) do |section|
  json.extract! section, :id, :due_time, :contents, :task_id, :section_title, :status
  json.url section_url(section, format: :json)
end
