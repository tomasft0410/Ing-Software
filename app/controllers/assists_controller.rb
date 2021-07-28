class AssistsController < ApplicationController
  def index
    @assists = Assist.all
    @carrete = Carrete.find(params[:id])
  end

  def new; end

  def show
    @assist = Assist.all
    @user = User.find(params[:id])    # esto creo que esta mal
  end

  def create
    @assist = Assist.new
    @ofert = Ofert.find(params[:id])
    @assist.user = @ofert.user
    @assist.carrete = @ofert.carrete
    @dinero_recaudado = @assist.carrete.dinero_recaudado
    @nuevo_ingreso = @ofert.bid


    if @assist.save
      @assist.carrete.update(dinero_recaudado: @dinero_recaudado + @nuevo_ingreso)
      @ofert.destroy
      redirect_to carrete_id_path(@assist.carrete.id)

    else
      redirect_to ofert_new_path, notice: "Error al crear una oferta"
    end
  end

  def delete
    @ofert = Ofert.find(params[:id])
    @carrete = @ofert.carrete
    @ofert.destroy
    redirect_to carrete_id_path(@carrete.id)
  end
end
