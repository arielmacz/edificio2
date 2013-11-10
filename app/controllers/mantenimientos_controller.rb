class MantenimientosController < ApplicationController
  # GET /mantenimientos
  # GET /mantenimientos.json
  def index
    @mantenimientos = Mantenimiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mantenimientos }
    end
  end

  # GET /mantenimientos/1
  # GET /mantenimientos/1.json
  def show
    @mantenimiento = Mantenimiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mantenimiento }
    end
  end

  # GET /mantenimientos/new
  # GET /mantenimientos/new.json
  def new
    @mantenimiento = Mantenimiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mantenimiento }
    end
  end

  # GET /mantenimientos/1/edit
  def edit
    @mantenimiento = Mantenimiento.find(params[:id])
  end

  # POST /mantenimientos
  # POST /mantenimientos.json
  def create
    @mantenimiento = Mantenimiento.new(params[:mantenimiento])

    respond_to do |format|
      if @mantenimiento.save
        format.html { redirect_to @mantenimiento, notice: 'Mantenimiento was successfully created.' }
        format.json { render json: @mantenimiento, status: :created, location: @mantenimiento }
      else
        format.html { render action: "new" }
        format.json { render json: @mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mantenimientos/1
  # PUT /mantenimientos/1.json
  def update
    @mantenimiento = Mantenimiento.find(params[:id])

    respond_to do |format|
      if @mantenimiento.update_attributes(params[:mantenimiento])
        format.html { redirect_to @mantenimiento, notice: 'Mantenimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantenimientos/1
  # DELETE /mantenimientos/1.json
  def destroy
    @mantenimiento = Mantenimiento.find(params[:id])
    @mantenimiento.destroy

    respond_to do |format|
      format.html { redirect_to mantenimientos_url }
      format.json { head :no_content }
    end
  end
end
