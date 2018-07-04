class PublicationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @publication = @user.publications.create!(params[:publication])
    redirect_to @user, :notice => "Publicacion creada!"
  end
end
