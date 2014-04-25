json.array!(@operation_types) do |operation_type|
  json.extract! operation_type, :id, :title
  json.url operation_type_url(operation_type, format: :json)
end
