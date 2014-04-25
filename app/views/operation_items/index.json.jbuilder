json.array!(@operation_items) do |operation_item|
  json.extract! operation_item, :id, :budget_category_id, :article_id, :operation_id, :amount
  json.url operation_item_url(operation_item, format: :json)
end
