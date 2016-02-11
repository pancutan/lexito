class DeletePeritoContableIncapacidadFromExpedients < ActiveRecord::Migration
  def up
    remove_column :expedients, :perito_contable_incapacidad
  end
end
