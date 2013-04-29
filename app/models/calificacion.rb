class Calificacion < ActiveRecord::Base

  has_many :servicios

  attr_accessible :calificacion
end
