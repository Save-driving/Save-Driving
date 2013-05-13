class RolesController < ApplicationController
  
  helper_method :sort_column, :sort_direction
  def index
  @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
   end
   @roles = Rol.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
  end

  def show
    @rol = Rol.find(params[:id])
  end


  def new
    @rol = Rol.new
  end


  def edit
    @rol = Rol.find(params[:id])
  end


  def create
    @rol = Rol.new(params[:rol])
    render :action => :new unless @rol.save
  end


  def update
    @rol = Rol.find(params[:id])
    render :action => :edit unless @rol.update_attributes(params[:rol])
  end


  def destroy
    @rol = Rol.find(params[:id])
    @rol.destroy
  end

     private
  def sort_column
    Rol.column_names.include?(params[:sort]) ? params[:sort] : "descripcion"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
  
end
