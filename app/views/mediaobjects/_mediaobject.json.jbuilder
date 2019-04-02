json.extract! mediaobject, :id, :title, :genre, :releasedate, :uid, :mid, :created_at, :updated_at
json.url mediaobject_url(mediaobject, format: :json)
