class ValoracionCarretesController < ApplicationController
  def index
    @valoracion_carretes = ValoracionCarrete.all
    @carrete = Carrete.find(params[:id])
    @valoracion_carrete = ValoracionCarrete.new
    @valoraciones_total = 0
    puntaje_valoraciones = 0
    @valoracion_carretes.each do |valoracion_carrete|
        if valoracion_carrete.carrete.id == @carrete.id
        @valoraciones_total += 1
        puntaje_valoraciones += valoracion_carrete.puntuacion
        end
  end
  if @valoraciones_total != 0
      @promedio_puntaje = puntaje_valoraciones / @valoraciones_total
  else
      @promedio_puntaje = 0
  end
end

  def new
    @valoracion_carrete = ValoracionCarrete.new
    @carrete = Carrete.find(params[:id])
  end

  def create
    @valoracion_carretes_params = params.require(:valoracion_carrete).permit(:puntuacion, :carrete)

    @valoracion_carrete = ValoracionCarrete.create(puntuacion: @valoracion_carretes_params[:puntuacion])
    @valoracion_carrete.user = current_user
    @carrete = Carrete.find(@valoracion_carretes_params[:carrete])
    @valoracion_carrete.carrete = @carrete
    if @valoracion_carrete.save
      redirect_to carrete_seleccionado_path(@valoracion_carrete.carrete.id), notice: "Valoración creada con exito"

    else
      redirect_to carrete_seleccionado_path(@valoracion_carrete.carrete.id), notice: "Error al crear una valoracion"
    end
  end

  def show
    @valoracion_carrete = ValoracionCarrete.find(params[:id])
  end

  def edit
    @valoracion_carrete = ValoracionCarrete.find(params[:id])
  end

  def update
    @valoracion_carrete = ValoracionCarrete.find(params[:id])
    @valoracion_carretes_params = params.require(:valoracion_carrete).permit(:puntuacion, :carrete)

    if @valoracion_carrete.update(puntuacion: @valoracion_carretes_params[:puntuacion])
      redirect_to carrete_seleccionado_path(@valoracion_carrete.carrete.id), notice: "Valoracion editada con exito"
    else
      redirect_to valoracion_carrete_edit_path(@valoracion_carrete.id), notice: "Error al editar valoracion"
    end
  end

  def delete
    @valoracion_carrete = ValoracionCarrete.find(params[:id])
    id_carrete = @valoracion_carrete.carrete.id
    @valoracion_carrete.destroy
    redirect_to carrete_seleccionado_path(id_carrete), notice: 'Valoración eliminada con exito'
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
