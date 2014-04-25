json.array!(@companies) do |company|
  json.extract! company, :id, :address_id, :name
  json.url company_url(company, format: :json)
end
