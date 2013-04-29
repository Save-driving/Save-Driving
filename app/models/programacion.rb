class Programacion < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :servicio

  attr_accessible :descripcion, :usuario_id, :servicio_id
end
