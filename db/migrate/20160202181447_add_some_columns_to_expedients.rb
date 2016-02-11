class AddSomeColumnsToExpedients < ActiveRecord::Migration
  def change
    add_column :expedients, :dni, :string
    add_column :expedients, :camara, :integer
    add_column :expedients, :fecnac, :date
    add_column :expedients, :gestor, :string
    add_column :expedients, :responsable, :string
  end
end
