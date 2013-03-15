class SecrytiesController < ApplicationController
  # GET /secryties
  # GET /secryties.json
  def index
    @secryties = Secryty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secryties }
    end
  end

  # GET /secryties/1
  # GET /secryties/1.json
  def show
    @secryty = Secryty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secryty }
    end
  end

  # GET /secryties/new
  # GET /secryties/new.json
  def new
    @secryty = Secryty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secryty }
    end
  end

  # GET /secryties/1/edit
  def edit
    @secryty = Secryty.find(params[:id])
  end

  # POST /secryties
  # POST /secryties.json
  def create
    @secryty = Secryty.new(params[:secryty])

    respond_to do |format|
      if @secryty.save
        format.html { redirect_to @secryty, notice: 'Secryty was successfully created.' }
        format.json { render json: @secryty, status: :created, location: @secryty }
      else
        format.html { render action: "new" }
        format.json { render json: @secryty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secryties/1
  # PUT /secryties/1.json
  def update
    @secryty = Secryty.find(params[:id])

    respond_to do |format|
      if @secryty.update_attributes(params[:secryty])
        format.html { redirect_to @secryty, notice: 'Secryty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secryty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secryties/1
  # DELETE /secryties/1.json
  def destroy
    @secryty = Secryty.find(params[:id])
    @secryty.destroy

    respond_to do |format|
      format.html { redirect_to secryties_url }
      format.json { head :no_content }
    end
  end
end
