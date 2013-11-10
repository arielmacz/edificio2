class InicioController < ApplicationController
  def index
	  @apartamentos = Apartamento.all
	  @users = User.name
	  @mantenimientos = Mantenimiento.all
	  @servicios = Servicio.all

  end
end
