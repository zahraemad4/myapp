json.extract! job, :id, :user_id, :jobtitle, :workhours, :company, :created_at, :updated_at
json.url job_url(job, format: :json)
