json.array!(@fechas) do |fecha|
  json.extract! fecha, :id, :numero
  json.url fecha_url(fecha, format: :json)
end
