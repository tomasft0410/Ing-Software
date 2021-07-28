class ValoracionServiciosController < ApplicationController
  def index
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

  def new
    @valoracion_servicio = ValoracionServicio.new
    @servicio = Servicio.find(params[:id])
  end

  def create
    @valoracion_servicios_params = params.require(:valoracion_servicio).permit(:puntuacion, :servicio)

    @valoracion_servicio = ValoracionServicio.create(puntuacion: @valoracion_servicios_params[:puntuacion])
    @valoracion_servicio.user = current_user
    @servicio = Servicio.find(@valoracion_servicios_params[:servicio])
    @valoracion_servicio.servicio = @servicio
    if @valoracion_servicio.save
      redirect_to servicio_seleccionado_path(@valoracion_servicio.servicio.id), notice: "Valoración creada con exito"
    else
      redirect_to servicio_seleccionado_path(@valoracion_servicio.servicio.id), notice: "Error al crear una valoracion"
    end
  end

  def show
    @valoracion_servicio = ValoracionServicio.find(params[:id])
  end

  def edit
    @valoracion_servicio = ValoracionServicio.find(params[:id])
  end

  def update
    @valoracion_servicio = ValoracionServicio.find(params[:id])
    @valoracion_servicios_params = params.require(:valoracion_servicio).permit(:puntuacion, :servicio)

    if @valoracion_servicio.update(puntuacion: @valoracion_servicios_params[:puntuacion])
      redirect_to servicio_seleccionado_path(@valoracion_servicio.servicio.id), notice: "Valoracion editada con exito"
    else
      redirect_to valoracion_servicio_edit_path(@valoracion_servicio.id), notice: "Error al editar valoracion"
    end
  end

  def delete
    @valoracion_servicio = ValoracionServicio.find(params[:id])
    id_servicio = @valoracion_servicio.servicio.id
    @valoracion_servicio.destroy
    redirect_to servicio_seleccionado_path(id_servicio), notice: 'Valoración eliminada con exito'
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
