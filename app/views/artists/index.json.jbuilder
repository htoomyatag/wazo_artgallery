json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :date_of_birth
  json.url artist_url(artist, format: :json)
end
