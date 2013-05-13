class Documento < ActiveRecord::Base
  
  has_many :usuarios  

  attr_accessible :descripcion, :sigla
  
  def self.search(search)
	   where('descripcion like ?', "%#{search}%")
	end

end
