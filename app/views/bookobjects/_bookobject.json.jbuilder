json.extract! bookobject, :id, :author, :publisher, :mid, :created_at, :updated_at
json.url bookobject_url(bookobject, format: :json)
