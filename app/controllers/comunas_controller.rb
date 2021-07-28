class ComunasController < ApplicationController
  def index
    @comunas = Comuna.all
  end

  def new
    @comuna = Comuna.new
  end

  def create
    @comunas_params = params.require(:comuna).permit(:nombre)
    @comuna = Comuna.create(@comunas_params)
    if @comuna.save
      redirect_to comunas_new_path, notice: "Creaste una comuna"

    else
      redirect_to comunas_new_path, notice: "Error al crear una comuna"
    end
  end

  def show
    @comuna = Comuna.find(params[:id])
  end

  def edit
    @comuna = Comuna.find(params[:id])
  end

  def update
    @comuna = Comuna.find(params[:id])
    @comunas_params = params.require(:comuna).permit(:nombre)

    if @comuna.update(@comunas_params)
      redirect_to comuna_path(@comuna.id), notice: "Comuna editada"
    else
      redirect_to comuna_edit_path(@comuna.id), notice: "Error al editar comuna"
    end
  end

  def delete
    @comuna = Comuna.find(params[:id])
    @comuna.destroy
    redirect_to comunas_index_path
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
