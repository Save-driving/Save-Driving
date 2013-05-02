class Servicio < ActiveRecord::Base

  has_many :programaciones
  belongs_to :especial
  belongs_to :ciudad
  belongs_to :calificacion
  attr_accessible :direccion_final, :direccion_inicial, :observaciones, :especial_id, :especial_descripcion, :ciudad_id, :calificacion_id

end
