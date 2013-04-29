class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
