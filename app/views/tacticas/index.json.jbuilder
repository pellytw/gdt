json.array!(@tacticas) do |tactica|
  json.extract! tactica, :id, :nombre
  json.url tactica_url(tactica, format: :json)
end
