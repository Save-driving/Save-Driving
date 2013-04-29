class Servicio < ActiveRecord::Base
  belongs_to :especial
  belongs_to :ciudad
  belongs_to :calificacion
  attr_accessible :direccion_final, :direccion_inicial, :observaciones
end
