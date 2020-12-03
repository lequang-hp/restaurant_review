json.extract! item, :id, :res_id, :name, :price, :detail, :created_at, :updated_at
json.url item_url(item, format: :json)
