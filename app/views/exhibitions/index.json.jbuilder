json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :id, :title, :date, :place, :desc
  json.url exhibition_url(exhibition, format: :json)
end
