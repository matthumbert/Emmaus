class BeneficiairesController < ApplicationController
  
  ListAntenne = Antenne.all
  
  def index
    @beneficiaires = Beneficiaire.all
  end

  
  def show  
    @beneficiaire = Beneficiaire.find(params[:id]) 
    @antenne = Antenne.find(@beneficiaire.antenne_id)
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

    
      if @beneficiaire.save
        @beneficiaires = Beneficiaire.all
        render 'index'
      else
        @listAntenne = Antenne.all
        render 'new'
      end
   
  end

  # PUT /beneficiaires/1
  # PUT /beneficiaires/1.json
  def update
    @beneficiaire = Beneficiaire.find(params[:id])

 
      if @beneficiaire.update_attributes(params[:beneficiaire])
        @antenne = Antenne.find(@beneficiaire.antenne_id)
        render 'show'
      else
         @listAntenne = Antenne.all
        render 'edit'
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
