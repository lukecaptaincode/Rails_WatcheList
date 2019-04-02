json.extract! gameobject, :id, :publisher, :developer, :platform, :mid, :created_at, :updated_at
json.url gameobject_url(gameobject, format: :json)
