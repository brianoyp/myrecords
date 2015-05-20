json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :description, :picture
  json.url picture_url(picture, format: :json)
end
