json.array!(@jugadors) do |jugador|
  json.extract! jugador, :id, :nombre, :apellido, :apodo, :fecha_nacimiento, :imagen, :club_id, :posicion_id
  json.url jugador_url(jugador, format: :json)
end
