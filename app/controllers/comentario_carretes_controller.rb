class ComentarioCarretesController < ApplicationController
  def index
    @comentario_carretes = ComentarioCarrete.all
    @carrete = Carrete.find(params[:id])
    @comentario_carrete = ComentarioCarrete.new
  end

  def new
    @comentario_carrete = ComentarioCarrete.new
    @carrete = Carrete.find(params[:id])
  end

  def create
    @comentario_carretes_params = params.require(:comentario_carrete).permit(:id_carrete, :contenido)

    @comentario_carrete = ComentarioCarrete.create(contenido: @comentario_carretes_params[:contenido])
    @comentario_carrete.user = current_user
    @carrete = Carrete.find(@comentario_carretes_params[:id_carrete])
    @comentario_carrete.carrete = @carrete
    if @comentario_carrete.save
      redirect_to comentario_carretes_id_path(@comentario_carrete.carrete.id), notice: 'Comentario creado con exito'
    else
      redirect_to comentario_carrete_new_path(@comentario_carrete.carrete.id), notice: 'Error al crear comentario!'
    end
  end

  def show
    @comentario_carrete = ComentarioCarrete.find(params[:id])
  end

  def edit
    @comentario_carrete = ComentarioCarrete.find(params[:id])
  end

  def update
    @comentario_carrete = ComentarioCarrete.find(params[:id])
    @comentario_carretes_params = params.require(:comentario_carrete).permit(:id_carrete, :contenido)

    if @comentario_carrete.update(@comentario_carretes_params)
      redirect_to comentario_carrete_path(@comentario_carrete.id), notice: 'Comentario editado correctamente!'
    else
      redirect_to comentario_carrete_path(@comentario_carrete.id), notice: 'Error al editar comentario!'
    end
  end

  def delete
    @comentario_carrete = ComentarioCarrete.find(params[:id])
    id_carrete = @comentario_carrete.carrete.id
    @comentario_carrete.destroy
    redirect_to comentario_carretes_id_path(id_carrete), notice: 'Comentario eliminado con exito'
  end
end
