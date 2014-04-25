json.array!(@brands) do |brand|
  json.extract! brand, :id, :company_id, :name
  json.url brand_url(brand, format: :json)
end
