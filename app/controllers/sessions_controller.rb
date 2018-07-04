class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(usuario: params[:session][:usuario])
    if user
      redirect_to user
    else
      redirect_to login, alert:"Usuario o Contraseña"
    end
  end

  def destroy
  end

end
