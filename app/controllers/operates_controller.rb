class OperatesController < ApplicationController
  def index
    @operates = Operate.all
  end

  def new
    @operate = Operate.new
  end

  def show
    @operate = Operate.find(params[:id])
  end

  def edit
    @operate = Operate.find(params[:id])
  end

  def update
    @operate = Comuna.find(params[:id])
    @operate_params = params.require(:operate).permit(:id_lugar, :id_servicio)

    if @operate.update(@operate_params)
      redirect_to operate_path(@operate.id), notice: "Área de operación de servicio editada"
    else
      redirect_to operate_edit_path(@operate.id), notice: "Error al editar el área de operación del servicio"
    end
  end

  def create
    @operate_params = params.require(:operate).permit(:id_lugar, :id_servicio)
    @operate = Operate.create
    @servicio = Servicio.find(@operate_params[:id_servicio])
    @comuna = Comuna.find(@operate_params[:id_lugar])
    @operate.comuna = @comuna
    @operate.servicio = @servicio

    if @operate.save
      redirect_to operate_new_path, notice: "Creaste un área de operación"

    else
      redirect_to operate_new_path, notice: "Error al crear un área de operaciónß"
    end
  end

  def delete
    @operate = Operate.find(params[:id])
    @operate.destroy
    redirect_to operates_index_path
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
