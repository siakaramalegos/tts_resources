json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :link, :notes, :category_id
  json.url resource_url(resource, format: :json)
end
