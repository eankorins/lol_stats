json.array!(@champions) do |champion|
  json.extract! champion, :id, :id, :name
  json.url champion_url(champion, format: :json)
end
