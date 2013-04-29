class CalificacionesController < ApplicationController
  # GET /calificaciones
  # GET /calificaciones.json
  def index
    @calificaciones = Calificacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calificaciones }
    end
  end

  # GET /calificaciones/1
  # GET /calificaciones/1.json
  def show
    @calificacion = Calificacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calificacion }
    end
  end

  # GET /calificaciones/new
  # GET /calificaciones/new.json
  def new
    @calificacion = Calificacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calificacion }
    end
  end

  # GET /calificaciones/1/edit
  def edit
    @calificacion = Calificacion.find(params[:id])
  end

  # POST /calificaciones
  # POST /calificaciones.json
  def create
    @calificacion = Calificacion.new(params[:calificacion])

    respond_to do |format|
      if @calificacion.save
        format.html { redirect_to @calificacion, notice: 'Calificacion was successfully created.' }
        format.json { render json: @calificacion, status: :created, location: @calificacion }
      else
        format.html { render action: "new" }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calificaciones/1
  # PUT /calificaciones/1.json
  def update
    @calificacion = Calificacion.find(params[:id])

    respond_to do |format|
      if @calificacion.update_attributes(params[:calificacion])
        format.html { redirect_to @calificacion, notice: 'Calificacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificaciones/1
  # DELETE /calificaciones/1.json
  def destroy
    @calificacion = Calificacion.find(params[:id])
    @calificacion.destroy

    respond_to do |format|
      format.html { redirect_to calificaciones_url }
      format.json { head :no_content }
    end
  end
end
