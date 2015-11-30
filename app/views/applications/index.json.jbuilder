json.array!(@applications) do |application|
  json.extract! application, :id, :email, :first_name, :last_name, :city, :state, :resume, :cover_letter, :opt_in
  json.url application_url(application, format: :json)
end
