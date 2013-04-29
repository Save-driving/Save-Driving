class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.references :documento
      t.string :numero_doc
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.references :ciudad
      t.integer :telefonos
      t.string :email
      t.references :rol
      t.references :cargo

      t.timestamps
    end
    add_index :usuarios, :documento_id
    add_index :usuarios, :ciudad_id
    add_index :usuarios, :rol_id
    add_index :usuarios, :cargo_id
  end
end
