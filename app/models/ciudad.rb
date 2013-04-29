class Ciudad < ActiveRecord::Base
  
  has_many :usuarios
  has_many :servicios

  attr_accessible :descripcion
end
