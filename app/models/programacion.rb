class Programacion < ActiveRecord::Base
<<<<<<< HEAD

  belongs_to :usuario
  belongs_to :servicio

  attr_accessible :descripcion, :usuario_id, :servicio_id

	def self.search(search)
	   where('descripcion like ?', "%#{search}%")
	end

=======
  belongs_to :usuario
  belongs_to :servicio
  attr_accessible :descripcion
>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
end
