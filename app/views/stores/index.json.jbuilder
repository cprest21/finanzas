json.array!(@stores) do |store|
  json.extract! store, :id, :address_id, :name
  json.url store_url(store, format: :json)
end
