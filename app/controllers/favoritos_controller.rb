class FavoritosController < ApplicationController
  def index
    @favoritos = Favorito.all
  end

  def new; end

  def create
    @carrete = Carrete.find(params[:id])
    @favorito = Favorito.new
    @favorito.user = current_user
    @favorito.carrete = @carrete

    if @favorito.save
      redirect_to carrete_seleccionado_path(@favorito.carrete.id), notice: "Carrete agregado a favoritos con éxito"
    else
      redirect_to carrete_seleccionado_path(@favorito.carrete.id), notice: "Error al agregar el carrete a favoritos"
    end
  end

  def show
    @favorito.all
    @user = User.find(params[:id])
  end

  def edit; end

  def delete
    @favorito = Favorito.find(params[:id])
    carrete_id = @favorito.carrete.id
    @favorito.destroy
    redirect_to carrete_seleccionado_path(carrete_id), notice: "Carrete eliminado de favoritos con éxito"
  end
end
