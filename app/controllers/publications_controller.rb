class PublicationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @publication = @user.publications.new(publication_params)
    redirect_to @user, :notice => "Publicacion creada!"
  end

  private
    def publication_params
      params.require(:publication).permit(:costo, :placa, :modelo, :marca, :year)
    end

end
