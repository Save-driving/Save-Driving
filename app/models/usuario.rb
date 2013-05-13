class Usuario < ActiveRecord::Base

  has_many :programaciones

  belongs_to :documento
  belongs_to :ciudad
  belongs_to :rol
  belongs_to :cargo
  attr_accessible :apellidos, :direccion, :email, :nombres, :numero_doc, :telefonos, :documento_id, :ciudad_id, :rol_id, :cargo_id, :documento_descripcion

   def self.search(search)
	   where('apellidos like ?', "%#{search}%")
 end
 
end
