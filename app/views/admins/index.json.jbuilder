json.array!(@admins) do |admin|
  json.extract! admin, :id, :user_name
  json.url admin_url(admin, format: :json)
end
