json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :nombre, :imagen, :participante_id, :tactica_id
  json.url equipo_url(equipo, format: :json)
end
