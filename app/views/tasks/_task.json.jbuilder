json.extract! task, :id, :title, :target_time, :timer_type, :created_at, :updated_at
json.url task_url(task, format: :json)
