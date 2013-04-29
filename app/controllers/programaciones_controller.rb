class ProgramacionesController < ApplicationController
  # GET /programaciones
  # GET /programaciones.json
  def index
    @programaciones = Programacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programaciones }
    end
  end

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
end
