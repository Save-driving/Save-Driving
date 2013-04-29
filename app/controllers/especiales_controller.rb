class EspecialesController < ApplicationController
  # GET /especiales
  # GET /especiales.json
  def index
    @especiales = Especial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @especiales }
    end
  end

  # GET /especiales/1
  # GET /especiales/1.json
  def show
    @especial = Especial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @especial }
    end
  end

  # GET /especiales/new
  # GET /especiales/new.json
  def new
    @especial = Especial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @especial }
    end
  end

  # GET /especiales/1/edit
  def edit
    @especial = Especial.find(params[:id])
  end

  # POST /especiales
  # POST /especiales.json
  def create
    @especial = Especial.new(params[:especial])

    respond_to do |format|
      if @especial.save
        format.html { redirect_to @especial, notice: 'Especial was successfully created.' }
        format.json { render json: @especial, status: :created, location: @especial }
      else
        format.html { render action: "new" }
        format.json { render json: @especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /especiales/1
  # PUT /especiales/1.json
  def update
    @especial = Especial.find(params[:id])

    respond_to do |format|
      if @especial.update_attributes(params[:especial])
        format.html { redirect_to @especial, notice: 'Especial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especiales/1
  # DELETE /especiales/1.json
  def destroy
    @especial = Especial.find(params[:id])
    @especial.destroy

    respond_to do |format|
      format.html { redirect_to especiales_url }
      format.json { head :no_content }
    end
  end
end
