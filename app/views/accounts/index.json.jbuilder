json.array!(@accounts) do |account|
  json.extract! account, :id, :title, :details, :owner_id
  json.url account_url(account, format: :json)
end
