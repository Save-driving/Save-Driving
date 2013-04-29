class Usuario < ActiveRecord::Base
  belongs_to :documento
  belongs_to :ciudad
  belongs_to :rol
  belongs_to :cargo
  attr_accessible :apellidos, :direccion, :email, :nombres, :numero_doc, :telefonos
end
