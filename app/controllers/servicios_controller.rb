class ServiciosController < ApplicationController
  def index
    @servicios = Servicio.all
  end

  def new
    @servicio = Servicio.new
  end

  def create
    @servicios_params = params.require(:servicio).permit(:nombre, :descripcion, :max_capacidad, :precio, :imagen, :status)
    @servicio = Servicio.create(@servicios_params)

    @servicio.user = current_user
    if @servicio.save
      redirect_to servicio_seleccionado_path(@servicio.id), notice: "Servicio creado con éxito"
    else
      redirect_to servicios_new_path, notice: "Error al crear el servicio"
    end
  end

  def show
    @servicio = Servicio.find(params[:id])
    @valoracion_servicios = ValoracionServicio.all
    @servicio = Servicio.find(params[:id])
    @valoracion_servicio = ValoracionServicio.new
    @valoraciones_total = 0
    puntaje_valoraciones = 0
    @valoracion_servicios.each do |valoracion_servicio|
        if valoracion_servicio.servicio.id == @servicio.id
        @valoraciones_total += 1
        puntaje_valoraciones += valoracion_servicio.puntuacion
        end
    end
    if @valoraciones_total != 0
        @promedio_puntaje = puntaje_valoraciones / @valoraciones_total
    else
        @promedio_puntaje = 0
    end
  end

  def edit
    @servicio = Servicio.find(params[:id])
  end

  def edit_admin
    @servicio = Servicio.find(params[:id])
  end

  def update
    @servicio = Servicio.find(params[:id])
    @servicios_params = params.require(:servicio).permit(:nombre, :descripcion, :max_capacidad, :precio, :imagen, :status)

    if @servicio.update(@servicios_params)
      redirect_to servicio_seleccionado_path(@servicio.id), notice: "Servicio editado con éxito"
    else
      redirect_to servicio_edit_path(@servicio.id), notice: "Error al editar el servicio"
    end
  end

  def delete
    @servicio = Servicio.find(params[:id])
    @servicio.destroy
    redirect_to servicios_index_path, notice: "Servicio eliminado con éxito"
  end

  def aceptar
    @servicio = Servicio.find(params[:id])
    @servicio.update(status: "Aceptado")
    redirect_to servicios_index_path
  end

  def rechazar
    @servicio = Servicio.find(params[:id])
    @servicio.destroy
    redirect_to servicios_index_path
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
