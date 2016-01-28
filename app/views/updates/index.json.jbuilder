json.array!(@updates) do |update|
  json.extract! update, :id, :expedient_id, :novedad
  json.url update_url(update, format: :json)
end
