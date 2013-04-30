class ProgramacionesController < ApplicationController

  
  helper_method :sort_column, :sort_direction
  def index
    @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
   end
   @programaciones = Programacion.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
   #@programaciones = Programacion.search(params[:search]).page(params[:page]).per_page(@rxp)# así queda sin hacer ordenamiento de columnas
   # @programaciones = Programacion.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programaciones }
    end
  end


  def show
     @programacion = Programacion.find(params[:id])
  end

  def new
     @programacion = Programacion.new
  end

  def edit
     @programacion = Programacion.find(params[:id])
  end

  def create
     @programacion = Programacion.new(params[:programacion])
     render :action => :new unless @programacion.save
  end

  def update
     @programacion = Programacion.find(params[:id])
     render :action => :edit unless @programacion.update_attributes(params[:programacion])
  end


  def destroy
     @programacion = Programacion.find(params[:id])
     @programacion.destroy
  end

    private
  def sort_column
    Programacion.column_names.include?(params[:sort]) ? params[:sort] : "descripcion"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

end
