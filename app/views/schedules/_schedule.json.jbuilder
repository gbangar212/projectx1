json.extract! schedule, :id, :request_id, :from_id, :to_id, :date, :start_time, :mode, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)