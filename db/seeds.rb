User.create!([
  {email: "user@example.com", encrypted_password: "$2a$10$DsgHur2dcvQBXgwJLk3qb.Ocw2p/Wobm6kuqCEMhyyu1lfLMj8upO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, name: nil},
  {email: "escuelaint@gmail.com", encrypted_password: "$2a$10$HRYKcjIJ5jr2Wyg1295Wm.WJzH9eC.QUz8vWGP8g5.3NDdR5zt8PS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2015-12-23 01:01:31", sign_in_count: 4, current_sign_in_at: "2015-12-26 21:15:55", last_sign_in_at: "2015-12-24 23:43:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Sergio"}
])
Expedient.create!([
  {numero: 999999, caratula: "Sergio Alonso contra Atomo", actor: "Sergio Alonso", demandado: "Millan hermanos", abogado: "Al Pacino Buffet", telefono_abogado: "123123123", email_abogado: "", perito_medico: "Dr Nic Riviera", perito_medico_email: "nriviera@springfield.com", perito_medico_telefono: "01231231231", perito_medico_incapacidad: 70, perito_psicologico: "Dr Freud", perito_psicologico_email: "inconsciente@viena.au", perito_psicologico_telefono: "333342342423", perito_psicologico_incapacidad: 80, perito_contable: "Enrico Palazzo", perito_contable_email: "epalazzo@nakedgun.com", perito_contable_telefono: "3123123123", perito_contable_incapacidad: 20, ibm: 20, indenmizacion: 20000}
])
