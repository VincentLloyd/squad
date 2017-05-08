json.extract! profile, :id, :user_id, :username, :first_name, :last_name, :date_of_birth, :gender, :avatar_src, :created_at, :updated_at
json.url profile_url(profile, format: :json)
