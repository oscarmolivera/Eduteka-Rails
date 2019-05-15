json.extract! user, :id, :name, :lastname, :email, :type, :deparment, :created_at, :updated_at
json.url user_url(user, format: :json)
