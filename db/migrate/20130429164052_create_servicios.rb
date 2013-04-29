class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :direccion_inicial
      t.string :direccion_final
      t.references :especial
      t.references :ciudad
      t.references :calificacion
      t.string :observaciones

      t.timestamps
    end
    add_index :servicios, :especial_id
    add_index :servicios, :ciudad_id
    add_index :servicios, :calificacion_id
  end
end
