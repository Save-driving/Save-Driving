class AyudasController < ApplicationController
  # GET /ayudas
  # GET /ayudas.json
  def index
    @ayudas = Ayuda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ayudas }
    end
  end

  # GET /ayudas/1
  # GET /ayudas/1.json
  def show
    @ayuda = Ayuda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ayuda }
    end
  end

  # GET /ayudas/new
  # GET /ayudas/new.json
  def new
    @ayuda = Ayuda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ayuda }
    end
  end

  # GET /ayudas/1/edit
  def edit
    @ayuda = Ayuda.find(params[:id])
  end

  # POST /ayudas
  # POST /ayudas.json
  def create
    @ayuda = Ayuda.new(params[:ayuda])

    respond_to do |format|
      if @ayuda.save
        format.html { redirect_to @ayuda, notice: 'Ayuda was successfully created.' }
        format.json { render json: @ayuda, status: :created, location: @ayuda }
      else
        format.html { render action: "new" }
        format.json { render json: @ayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ayudas/1
  # PUT /ayudas/1.json
  def update
    @ayuda = Ayuda.find(params[:id])

    respond_to do |format|
      if @ayuda.update_attributes(params[:ayuda])
        format.html { redirect_to @ayuda, notice: 'Ayuda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ayudas/1
  # DELETE /ayudas/1.json
  def destroy
    @ayuda = Ayuda.find(params[:id])
    @ayuda.destroy

    respond_to do |format|
      format.html { redirect_to ayudas_url }
      format.json { head :no_content }
    end
  end
end
