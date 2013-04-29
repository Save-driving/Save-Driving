class CreateEspeciales < ActiveRecord::Migration
  def change
    create_table :especiales do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
