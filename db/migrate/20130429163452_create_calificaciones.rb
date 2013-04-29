class CreateCalificaciones < ActiveRecord::Migration
  def change
    create_table :calificaciones do |t|
      t.string :calificacion

      t.timestamps
    end
  end
end
