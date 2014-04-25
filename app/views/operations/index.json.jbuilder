json.array!(@operations) do |operation|
  json.extract! operation, :id, :operation_type_id, :store_id, :title, :account_id, :amount
  json.url operation_url(operation, format: :json)
end
