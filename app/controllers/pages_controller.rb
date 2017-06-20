class PagesController < ApplicationController
  def x

  	@user = User.all

  end

  def new_user
  	if params[:nombre].present? && params[:email].present? && params[:edad].present?
  		@user = User.new(nombre: params[:nombre], email: params[:email],edad: params[:edad])
  		@user.save
  		edirect_to pages_x_path, notice: "Usuario Creado"
  	else
  		redirect_to pages_x_path, alert: "Ingresa todos los Datos"
  	end
  end
end
