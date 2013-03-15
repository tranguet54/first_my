class SecriesController < ApplicationController
  # GET /secries
  # GET /secries.json
  def index
    @secries = Secry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secries }
    end
  end

  # GET /secries/1
  # GET /secries/1.json
  def show
    @secry = Secry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secry }
    end
  end

  # GET /secries/new
  # GET /secries/new.json
  def new
    @secry = Secry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secry }
    end
  end

  # GET /secries/1/edit
  def edit
    @secry = Secry.find(params[:id])
  end

  # POST /secries
  # POST /secries.json
  def create
    @secry = Secry.new(params[:secry])

    respond_to do |format|
      if @secry.save
        format.html { redirect_to @secry, notice: 'Secry was successfully created.' }
        format.json { render json: @secry, status: :created, location: @secry }
      else
        format.html { render action: "new" }
        format.json { render json: @secry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secries/1
  # PUT /secries/1.json
  def update
    @secry = Secry.find(params[:id])

    respond_to do |format|
      if @secry.update_attributes(params[:secry])
        format.html { redirect_to @secry, notice: 'Secry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secries/1
  # DELETE /secries/1.json
  def destroy
    @secry = Secry.find(params[:id])
    @secry.destroy

    respond_to do |format|
      format.html { redirect_to secries_url }
      format.json { head :no_content }
    end
  end
end
