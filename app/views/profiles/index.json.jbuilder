json.array!(@profiles) do |profile|
  json.extract! profile, :id, :firstname, :lastname, :date_of_birth, :address, :notes, :employee_id
  json.url profile_url(profile, format: :json)
end
