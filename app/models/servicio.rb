class Servicio < ActiveRecord::Base
<<<<<<< HEAD
  has_many :programaciones
  belongs_to :especial
  belongs_to :ciudad
  belongs_to :calificacion
  attr_accessible :direccion_final, :direccion_inicial, :observaciones, :especial_id, :especial_descripcion, :ciudad_id, :calificacion_id
=======
  belongs_to :especial
  belongs_to :ciudad
  belongs_to :calificacion
  attr_accessible :direccion_final, :direccion_inicial, :observaciones
>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
end
