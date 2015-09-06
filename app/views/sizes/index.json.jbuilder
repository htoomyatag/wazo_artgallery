json.array!(@sizes) do |size|
  json.extract! size, :id, :width, :height, :unit
  json.url size_url(size, format: :json)
end
