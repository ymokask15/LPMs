json.extract! inquiry, :id, :name, :matter, :detail, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
