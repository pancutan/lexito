User.create!([
  {email: "dmmilko@hotmail.com", encrypted_password: "$2a$10$DL7591LBDca2FejfAPR69etXLKLvlTY4DXsR3ZdMeLfen4ZJt5ope", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-02-02 15:03:37", last_sign_in_at: "2016-02-02 15:01:39", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "David Milkovich"},
  {email: "escuelaint@gmail.com", encrypted_password: "$2a$10$SsuW4PcXMjvAxJHPwNTeluDsHBl9V3.PeXIUQYOppa//CZjR8nqJq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-02-04 19:30:38", last_sign_in_at: "2016-02-02 14:49:57", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Sergio Alonso"}
])
Expedient.create!([
  {numero: 112345, caratula: "Sergio Alonso c/Max Gregorcic", actor: "Sergio Alonso", demandado: "Max Gregorcic", abogado: "Antonio Perez", telefono_abogado: "123123123", email_abogado: "escuelaint@gmailcom", perito_medico: "Dr Nick Riviera", perito_medico_email: "n@riviera.com", perito_medico_telefono: "12312312312", perito_medico_incapacidad: 30, perito_psicologico: "Dr. Freud", perito_psicologico_email: "freud@viena.vi", perito_psicologico_telefono: "1312312312", perito_psicologico_incapacidad: 40, perito_contable: "Dr. Mengano", perito_contable_email: "mengano@ppp.com", perito_contable_telefono: "12312312", ibm: nil, indenmizacion: 20000, dni: nil, camara: nil, fecnac: nil, gestor: nil, responsable: nil},
  {numero: 123456, caratula: "Sergio Alonso c/Atomo", actor: "Sergio Alonso", demandado: "Frigorificos Millan SA", abogado: "Dra Norma Maziotti", telefono_abogado: "2615878665", email_abogado: "nmazzioti@estudiomazziotti.com", perito_medico: "Dr Nick Riviera", perito_medico_email: "nriviera@springfield.com", perito_medico_telefono: "23123123", perito_medico_incapacidad: 70, perito_psicologico: "Dr S. Freud", perito_psicologico_email: "sigmundf@viena.de", perito_psicologico_telefono: "123123123", perito_psicologico_incapacidad: 60, perito_contable: "Juan V Surroille", perito_contable_email: "jvsurroille@austral.gov", perito_contable_telefono: "1211231231", ibm: nil, indenmizacion: 20000, dni: nil, camara: nil, fecnac: nil, gestor: nil, responsable: nil}
])
Update.create!([
  {expedient_id: 2, novedad: "prueba 1"},
  {expedient_id: 1, novedad: "Llega muy enojado porque le vendieron una butiffara que caminaba y profería improperios."},
  {expedient_id: 1, novedad: "El caso ha tomado un giro interesante: la butifarra quiere presentarse de testigo, por lo que habria que revisar el tipo de persona juridica a la que pertenece. "},
  {expedient_id: 1, novedad: "llama por telefono y doy novedades.\r\n"},
  {expedient_id: 1, novedad: "llamo al abogado de la demandada y me dice  que en 20 me hace una oferta."}
])
