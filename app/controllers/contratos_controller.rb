class ContratosController < ApplicationController
  def index
    @contratos = Contrato.all
  end

  def new
    @contrato = Contrato.new
    @servicio = Servicio.find(params[:id])
  end

  def show
    @contrato = Contrato.find(params[:id])
  end

  def create
    @contrato_params = params.require(:contrato).permit(:id_carrete, :servicio)
    @contrato = Contrato.create
    @servicio = Servicio.find(@contrato_params[:servicio])
    @carrete = Carrete.find(@contrato_params[:id_carrete])
    @contrato.carrete = @carrete
    @contrato.servicio = @servicio

    if @contrato.save
      redirect_to servicio_seleccionado_path(@servicio.id)

    else
      redirect_to contrato_new_path, notice: "Error al crear un contrato"
    end
  end

  def delete
    @contrato = Contrato.find(params[:id])
    @contrato.destroy
    redirect_to contratos_index_path
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
