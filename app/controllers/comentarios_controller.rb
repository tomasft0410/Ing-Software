class ComentariosController < ApplicationController
  def index
    @comentarios = Comentario.all
    @servicio = Servicio.find(params[:id])
    @comentario = Comentario.new
  end

  def new
    @comentario = Comentario.new
    @servicio = Servicio.find(params[:id])
  end

  def create
    @comentarios_params = params.require(:comentario).permit(:servicio, :contenido, :fecha_hora)

    @comentario = Comentario.create(contenido: @comentarios_params[:contenido], fecha_hora: @comentarios_params[:fecha_hora])
    @comentario.user = current_user
    @servicio = Servicio.find(@comentarios_params[:servicio])
    @comentario.servicio = @servicio
    if @comentario.save
      redirect_to comentarios_id_path(@comentario.servicio.id), notice: 'Comentario creado con exito'
    else
      redirect_to comentarios_new_path(@comentario.servicio.id), notice: 'Error al crear comentario!'
    end
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def edit
    @comentario = Comentario.find(params[:id])
  end

  def update
    @comentario = Comentario.find(params[:id])
    @comentarios_params = params.require(:comentario).permit(:servicio, :contenido, :fecha_hora)

    if @comentario.update(@comentarios_params)
      redirect_to comentario_path(@comentario.id), notice: 'Comentario editado correctamente!'
    else
      redirect_to comentario_edit_path(@comentario.id), notice: 'Error al editar comentario!'
    end
  end

  def delete
    @comentario = Comentario.find(params[:id])
    id_servicio = @comentario.servicio.id
    @comentario.destroy
    redirect_to comentarios_id_path(id_servicio), notice: 'Comentario eliminado con exito'
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
