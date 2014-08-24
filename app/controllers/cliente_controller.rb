class ClienteController < ApplicationController
  def crear
  	if request.get?
  		@cliente = Cliente.new
  	else
  		Cliente.create(cliente_params)
  		redirect_to "/cliente/buscar"
  	end
  end

  def buscar
  	if request.get?
  		@clientes = Cliente.all.to_a
  	else
  		@clientes = Cliente.where(:nombre => params[:busqueda][0])
  	end

  end

  def actualizar
  	if request.get?
  		@cliente = Cliente.find(params[:id])
  	else
  		@cliente = Cliente.find(params[:id])
  		@cliente.update_attributes(cliente_params)
  		redirect_to "/cliente/buscar"
  	end
  end

  def eliminar
  	if request.get?
  	else
  		Cliente.find(params[:id]).destroy()
  		redirect_to "/cliente/buscar"
  	end
  end

  def cliente_params
  	params.require(:cliente).permit(:nombre,:apellidos,:edad,:telefono,:estado_cv,:email)
  end
end
