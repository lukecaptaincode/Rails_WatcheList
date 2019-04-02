json.extract! movieobject, :id, :studio, :director, :mid, :created_at, :updated_at
json.url movieobject_url(movieobject, format: :json)
