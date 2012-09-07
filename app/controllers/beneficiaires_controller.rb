class BeneficiairesController < ApplicationController
  
  ListAntenne = Antenne.all
  
  def index
    @beneficiaires = Beneficiaire.all
  end

  
  def show  
    @beneficiaire = Beneficiaire.find(params[:id]) 
  end

  
  def new
    @beneficiaire = Beneficiaire.new
    @listAntenne = Antenne.all 
       
  end

  # GET /beneficiaires/1/edit
  def edit
    @beneficiaire = Beneficiaire.find(params[:id])
    @listAntenne = Antenne.all
    
  end

  # POST /beneficiaires
  # POST /beneficiaires.json
  def create
    @beneficiaire = Beneficiaire.new(params[:beneficiaire])

    respond_to do |format|
      if @beneficiaire.save
        format.html { redirect_to @beneficiaire, notice: 'Beneficiaire was successfully created.' }
        format.json { render json: @beneficiaire, status: :created, location: @beneficiaire }
      else
        @listAntenne = Antenne.all
        format.html { render action: "new" }
        format.json { render json: @beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beneficiaires/1
  # PUT /beneficiaires/1.json
  def update
    @beneficiaire = Beneficiaire.find(params[:id])

    respond_to do |format|
      if @beneficiaire.update_attributes(params[:beneficiaire])
        format.html { redirect_to @beneficiaire, notice: 'Beneficiaire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaires/1
  # DELETE /beneficiaires/1.json
  def destroy
    @beneficiaire = Beneficiaire.find(params[:id])
    @beneficiaire.destroy

    respond_to do |format|
      format.html { redirect_to beneficiaires_url }
      format.json { head :no_content }
    end
  end
end
