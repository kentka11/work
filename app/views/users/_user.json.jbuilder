json.extract! user, :id, :enterprise_id, :full_name, :first_name, :last_name, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
