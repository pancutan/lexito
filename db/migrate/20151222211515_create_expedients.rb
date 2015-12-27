class CreateExpedients < ActiveRecord::Migration
  def change
    create_table :expedients do |t|
      t.integer :numero
      t.string :caratula
      t.string :actor
      t.string :demandado
      t.string :abogado
      t.string :telefono_abogado
      t.string :email_abogado
      t.string :perito_medico
      t.string :perito_medico_email
      t.string :perito_medico_telefono
      t.integer :perito_medico_incapacidad
      t.string :perito_psicologico
      t.string :perito_psicologico_email
      t.string :perito_psicologico_telefono
      t.integer :perito_psicologico_incapacidad
      t.string :perito_contable
      t.string :perito_contable_email
      t.string :perito_contable_telefono
      t.integer :perito_contable_incapacidad
      t.integer :ibm
      t.integer :indenmizacion

      t.timestamps null: false
    end
  end
end
