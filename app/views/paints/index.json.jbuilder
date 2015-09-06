json.array!(@paints) do |paint|
  json.extract! paint, :id, :title, :artist
  json.url paint_url(paint, format: :json)
end
