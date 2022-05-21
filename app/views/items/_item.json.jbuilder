json.extract! item, :id, :name, :price, :quantity, :warehouse_id, :created_at, :updated_at
json.url item_url(item, format: :json)
