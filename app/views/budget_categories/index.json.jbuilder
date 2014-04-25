json.array!(@budget_categories) do |budget_category|
  json.extract! budget_category, :id, :budget_id, :name
  json.url budget_category_url(budget_category, format: :json)
end
