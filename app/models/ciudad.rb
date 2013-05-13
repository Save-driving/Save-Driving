class Ciudad < ActiveRecord::Base
  
  has_many :usuarios
  has_many :servicios


  attr_accessible :descripcion

    def self.search(search)
	   where('descripcion like ?', "%#{search}%")
	end
	
end
