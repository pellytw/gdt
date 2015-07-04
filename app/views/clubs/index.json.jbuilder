json.array!(@clubs) do |club|
  json.extract! club, :id, :nombre, :apodo, :imagen
  json.url club_url(club, format: :json)
end
