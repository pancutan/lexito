class CreateExpedients < ActiveRecord::Migration
  def change
    create_table :expedients do |t|
      t.integer :numero
      t.string :caratula

      t.timestamps null: false
    end
  end
end
