class CreateProgramaciones < ActiveRecord::Migration
  def change
    create_table :programaciones do |t|
      t.references :usuario
      t.references :servicio
      t.string :descripcion

      t.timestamps
    end
    add_index :programaciones, :usuario_id
    add_index :programaciones, :servicio_id
  end
end
