class UsuariosController < ApplicationController
 
 helper_method :sort_column, :sort_direction
  def index
  @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
   end
   @usuarios = Usuario.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
  end


  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
    @usuario = Usuario.new
  end


  def edit
    @usuario = Usuario.find(params[:id])
  end


  def create
    @usuario = Usuario.new(params[:usuario])
    render :action => :new unless @usuario.save
  end


  def update
    @usuario = Usuario.find(params[:id])
    render :action => :edit unless @usuario.update_attributes(params[:usuario])
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
  end

  private
  def sort_column
    Usuario.column_names.include?(params[:sort]) ? params[:sort] : "apellidos"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
  
end
