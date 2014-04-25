json.array!(@articles) do |article|
  json.extract! article, :id, :category_id, :brand_id, :name, :details
  json.url article_url(article, format: :json)
end
