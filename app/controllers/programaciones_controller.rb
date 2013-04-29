class ProgramacionesController < ApplicationController

  def index
    @programaciones = Programacion.all
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
end
