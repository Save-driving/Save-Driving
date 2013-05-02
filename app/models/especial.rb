class Especial < ActiveRecord::Base


  has_many :servicios


  attr_accessible :descripcion
end
