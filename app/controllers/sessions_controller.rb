class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by_login((params[:session][:login]).downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      render 'static/home'
    else
      flash[:error] = 'Mot de passe ou Login invalide...'
      render 'new'
    end
    
  end
  
  def destroy
    
  end
  
end
