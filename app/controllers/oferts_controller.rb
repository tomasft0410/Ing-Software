class OfertsController < ApplicationController
  def index
    @oferts = Ofert.all
    @carrete = Carrete.find(params[:id])
  end

  def new
    @ofert = Ofert.new
    @carrete = Carrete.find(params[:id])
  end

  def show
    @ofert = Ofert.find(params[:id])
  end

  def edit
    @ofert = Ofert.find(params[:id])
  end

  def update
    @ofert = Ofert.find(params[:id])
    @oferts_params = params.require(:ofert).permit(:bid, :id_carrete)

    if @ofert.update(bid: @oferts_params[:bid])
      redirect_to ofert_seleccionado_path(@ofert.id), notice: "BID editado con éxito"
    else
      redirect_to ofert_edit_path(@ofert.id), notice: "Error al editar el BID"
    end
  end

  def create
    @oferts_params = params.require(:ofert).permit(:bid, :id_carrete)
    @ofert = Ofert.create(bid: @oferts_params[:bid])
    @ofert.user = current_user
    @carrete = Carrete.find(@oferts_params[:id_carrete])
    @ofert.carrete = @carrete
    @dinero_restante = current_user.dinero - @ofert.bid 
    if @ofert.bid > current_user.dinero
      redirect_to ofert_new_path(@ofert.carrete.id), notice: "No tienes suficiente dinero para realizar ese bid"
    else
      if @ofert.save
        current_user.update(dinero: @dinero_restante)
        redirect_to carrete_seleccionado_path(@ofert.carrete.id), notice: "Creaste una oferta"
      else
        redirect_to ofert_new_path(@ofert.carrete.id), notice: "Error al crear una oferta"
      end
    end
  end

  def delete
    @ofert = Ofert.find(params[:id])
    @ofert.destroy
    redirect_to '/users/show'
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
