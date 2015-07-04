json.array!(@posicions) do |posicion|
  json.extract! posicion, :id, :nombre, :imagen
  json.url posicion_url(posicion, format: :json)
end
