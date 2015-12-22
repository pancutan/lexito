json.array!(@expedients) do |expedient|
  json.extract! expedient, :id, :numero, :caratula
  json.url expedient_url(expedient, format: :json)
end
