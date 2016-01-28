User.create!([
  {email: "escuelaint@gmail.com", encrypted_password: "$2a$10$SsuW4PcXMjvAxJHPwNTeluDsHBl9V3.PeXIUQYOppa//CZjR8nqJq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-28 14:19:23", last_sign_in_at: "2016-01-28 14:19:23", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: nil}
])
Expedient.create!([
  {numero: 123456, caratula: "Sergio Alonso contra Atomo", actor: "Sergio Alonso", demandado: "Frigorificos Millan SA", abogado: "Dra Norma Maziotti", telefono_abogado: "2615878665", email_abogado: "nmazzioti@estudiomazziotti.com", perito_medico: "Dr Nick Riviera", perito_medico_email: "nriviera@springfield.com", perito_medico_telefono: "23123123", perito_medico_incapacidad: 70, perito_psicologico: "Dr S. Freud", perito_psicologico_email: "sigmundf@viena.de", perito_psicologico_telefono: "123123123", perito_psicologico_incapacidad: 60, perito_contable: "Juan V Surroille", perito_contable_email: "jvsurroille@austral.gov", perito_contable_telefono: "1211231231", perito_contable_incapacidad: 20, ibm: nil, indenmizacion: 20000}
])
Update.create!([
  {expedient_id: 1, novedad: "Llega muy enojado porque le vendieron un salame que caminaba y profería improperios."},
  {expedient_id: 1, novedad: "El caso ha tomado un giro interesante: el salame quiere presentarse de testigo, por lo que habria que revisar el tipo de persona juridica a la que pertenece."}
])
