class Documento < ActiveRecord::Base
  
  has_many :usuarios
  

  attr_accessible :descripcion, :sigla
end
