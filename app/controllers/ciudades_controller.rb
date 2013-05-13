class CiudadesController < ApplicationController

helper_method :sort_column, :sort_direction

  def index
    @rxp = (params[:numreg])? params[:numreg].to_i : 5

    if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
    end
    @ciudades = Ciudad.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
  end


  def show
    @ciudad = Ciudad.find(params[:id])
  end


  def new
    @ciudad = Ciudad.new
  end

  def edit
    @ciudad = Ciudad.find(params[:id])
  end

  def create
    @ciudad = Ciudad.new(params[:ciudad])
    render :action => :new unless @ciudad.save
  end

  def update
    @ciudad = Ciudad.find(params[:id])
    render :action => :edit unless @ciudad.update_attributes(params[:ciudad])
  end

  def destroy
    @ciudad = Ciudad.find(params[:id])
    @ciudad.destroy
  end

    private
  def sort_column
    Programacion.column_names.include?(params[:sort]) ? params[:sort] : "descripcion"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

end
