json.array!(@valor_puntajes) do |valor_puntaje|
  json.extract! valor_puntaje, :id, :doble_amarilla, :roja_directa, :amarilla, :figura, :penal_errado, :gol_penal, :gol, :penal_atajado, :valla_invicta, :chenemigo
  json.url valor_puntaje_url(valor_puntaje, format: :json)
end
