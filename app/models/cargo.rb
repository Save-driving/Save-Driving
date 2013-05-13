class Cargo < ActiveRecord::Base

  has_many :usuarios


  attr_accessible :descripcion

  	def self.search(search)
	   where('descripcion like ?', "%#{search}%")
	end
end
