json.array!(@paint_types) do |paint_type|
  json.extract! paint_type, :id, :type_name
  json.url paint_type_url(paint_type, format: :json)
end
