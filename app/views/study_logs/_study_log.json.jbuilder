json.extract! study_log, :id, :task_id, :started_at, :ended_at, :duration, :created_at, :updated_at
json.url study_log_url(study_log, format: :json)
