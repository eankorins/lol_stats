json.array!(@stats) do |stat|
  json.extract! stat, :id, :name, :value
  json.url stat_url(stat, format: :json)
end
