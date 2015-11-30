json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :city, :state, :description, :requirements, :is_active, :is_onsite, :compensation, :user_id
  json.url job_url(job, format: :json)
end
