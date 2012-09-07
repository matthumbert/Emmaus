class AntennesController < ApplicationController
  # GET /antennes
  # GET /antennes.json
  def index
    @antennes = Antenne.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @antennes }
    end
  end

  # GET /antennes/1
  # GET /antennes/1.json
  def show
    @antenne = Antenne.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @antenne }
    end
  end

  # GET /antennes/new
  # GET /antennes/new.json
  def new
    @antenne = Antenne.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @antenne }
    end
  end

  # GET /antennes/1/edit
  def edit
    @antenne = Antenne.find(params[:id])
  end

  # POST /antennes
  # POST /antennes.json
  def create
    @antenne = Antenne.new(params[:antenne])

    respond_to do |format|
      if @antenne.save
        format.html { redirect_to @antenne, notice: 'Antenne was successfully created.' }
        format.json { render json: @antenne, status: :created, location: @antenne }
      else
        format.html { render action: "new" }
        format.json { render json: @antenne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /antennes/1
  # PUT /antennes/1.json
  def update
    @antenne = Antenne.find(params[:id])

    respond_to do |format|
      if @antenne.update_attributes(params[:antenne])
        format.html { redirect_to @antenne, notice: 'Antenne was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @antenne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antennes/1
  # DELETE /antennes/1.json
  def destroy
    @antenne = Antenne.find(params[:id])
    @antenne.destroy

    respond_to do |format|
      format.html { redirect_to antennes_url }
      format.json { head :no_content }
    end
  end
end
