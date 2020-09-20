json.extract! profile, :id, :name, :birthday, :address, :is_enable, :thumbnail, :header_image, :introduction, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
