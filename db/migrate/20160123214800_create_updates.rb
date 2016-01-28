class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :expedient_id
      t.text :novedad

      t.timestamps null: false
    end
  end
end
