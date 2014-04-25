json.array!(@addresses) do |address|
  json.extract! address, :id, :locality_id, :street, :number, :floor, :department, :neighborhood
  json.url address_url(address, format: :json)
end
