json.array!(@account_users) do |account_user|
  json.extract! account_user, :id, :account_id, :user_id, :permission_level
  json.url account_user_url(account_user, format: :json)
end
