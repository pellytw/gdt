json.array!(@torneos) do |torneo|
  json.extract! torneo, :id, :nombre
  json.url torneo_url(torneo, format: :json)
end
