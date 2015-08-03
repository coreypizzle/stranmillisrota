json.array!(@rota) do |rotum|
  json.extract! rotum, :id, :week
  json.url rotum_url(rotum, format: :json)
end
