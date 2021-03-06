json.array!(@expedients) do |expedient|
  json.extract! expedient, :id, :numero, :caratula, :actor, :demandado, :abogado, :telefono_abogado, :email_abogado, :perito_medico, :perito_medico_email, :perito_medico_telefono, :perito_medico_incapacidad, :perito_psicologico, :perito_psicologico_email, :perito_psicologico_telefono, :perito_psicologico_incapacidad, :perito_contable, :perito_contable_email, :perito_contable_telefono, :perito_contable_incapacidad, :ibm, :indenmizacion
  json.url expedient_url(expedient, format: :json)
end
