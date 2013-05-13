class DocumentosController < ApplicationController
 
  helper_method :sort_column, :sort_direction
  def index
     @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
   end
   @documentos = Documento.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
  end


  def show
    @documento = Documento.find(params[:id])
  end


  def new
    @documento = Documento.new
  end


  def edit
    @documento = Documento.find(params[:id])
  end


  def create
    @documento = Documento.new(params[:documento])
    render :action => :new unless @documento.save
  end


  def update
    @documento = Documento.find(params[:id])
    render :action => :edit unless @documento.update_attributes(params[:documento])
  end


  def destroy
    @documento = Documento.find(params[:id])
    @documento.destroy
  end

     private
  def sort_column
    Documento.column_names.include?(params[:sort]) ? params[:sort] : "descripcion"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
  
end
