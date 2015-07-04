json.array!(@participantes) do |participante|
  json.extract! participante, :id, :nombre, :apellido, :apodo, :imagen, :user_id
  json.url participante_url(participante, format: :json)
end
