class Usuario < ActiveRecord::Base
<<<<<<< HEAD
  has_many :programaciones
=======
>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
  belongs_to :documento
  belongs_to :ciudad
  belongs_to :rol
  belongs_to :cargo
<<<<<<< HEAD
  attr_accessible :apellidos, :direccion, :email, :nombres, :numero_doc, :telefonos, :documento_id, :ciudad_id, :rol_id, :cargo_id
=======
  attr_accessible :apellidos, :direccion, :email, :nombres, :numero_doc, :telefonos
>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
end
