json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :photographer
  json.url photo_url(photo, format: :json)
end
