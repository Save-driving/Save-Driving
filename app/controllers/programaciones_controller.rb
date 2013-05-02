class ProgramacionesController < ApplicationController
<<<<<<< HEAD

  
  helper_method :sort_column, :sort_direction
  def index
    @rxp = (params[:numreg])? params[:numreg].to_i : 5

   if ((@rxp) == 0) or ((@rxp) < 0) then
      @rxp = 1
   end
   @programaciones = Programacion.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => (@rxp), :page => params[:page])
   #@programaciones = Programacion.search(params[:search]).page(params[:page]).per_page(@rxp)# así queda sin hacer ordenamiento de columnas
   # @programaciones = Programacion.all
=======
  # GET /programaciones
  # GET /programaciones.json
  def index
    @programaciones = Programacion.all

>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programaciones }
    end
  end

<<<<<<< HEAD

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

=======
  # GET /programaciones/1
  # GET /programaciones/1.json
  def show
    @programacion = Programacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @programacion }
    end
  end

  # GET /programaciones/new
  # GET /programaciones/new.json
  def new
    @programacion = Programacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @programacion }
    end
  end

  # GET /programaciones/1/edit
  def edit
    @programacion = Programacion.find(params[:id])
  end

  # POST /programaciones
  # POST /programaciones.json
  def create
    @programacion = Programacion.new(params[:programacion])

    respond_to do |format|
      if @programacion.save
        format.html { redirect_to @programacion, notice: 'Programacion was successfully created.' }
        format.json { render json: @programacion, status: :created, location: @programacion }
      else
        format.html { render action: "new" }
        format.json { render json: @programacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programaciones/1
  # PUT /programaciones/1.json
  def update
    @programacion = Programacion.find(params[:id])

    respond_to do |format|
      if @programacion.update_attributes(params[:programacion])
        format.html { redirect_to @programacion, notice: 'Programacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @programacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programaciones/1
  # DELETE /programaciones/1.json
  def destroy
    @programacion = Programacion.find(params[:id])
    @programacion.destroy

    respond_to do |format|
      format.html { redirect_to programaciones_url }
      format.json { head :no_content }
    end
  end
>>>>>>> ceb3fe07fcb627db29758c51404cb32dc2823036
end
