class CargosController < ApplicationController

 helper_method :sort_column, :sort_direction
  def index
    @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
    end
    @cargos = Cargo.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
  end


  def show
    @cargo = Cargo.find(params[:id])
  end


  def new
    @cargo = Cargo.new
  end

  def edit
    @cargo = Cargo.find(params[:id])
  end


  def create
    @cargo = Cargo.new(params[:cargo])
     render :action => :new unless @cargo.save
  end


  def update
    @cargo = Cargo.find(params[:id])
    render :action => :edit unless @cargo.update_attributes(params[:cargo])
  end


  def destroy
    @cargo = Cargo.find(params[:id])
    @cargo.destroy
  end
  
      private
  def sort_column
    Programacion.column_names.include?(params[:sort]) ? params[:sort] : "descripcion"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
