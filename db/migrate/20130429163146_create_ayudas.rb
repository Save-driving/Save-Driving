class CreateAyudas < ActiveRecord::Migration
  def change
    create_table :ayudas do |t|
      t.string :glosario
      t.string :usos
      t.string :contactos

      t.timestamps
    end
  end
end
