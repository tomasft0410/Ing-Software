class CarretesController < ApplicationController
  def index
    @carretes = Carrete.all
    @carretes.each do |carrete|
      next unless carrete.fecha_limite <= Time.now

      next unless carrete.estado_busqueda == 'Abierto'

      carrete.update(estado_busqueda: 'Cerrado')

      @oferts = Ofert.all
      lista_ofertas_carrete = []
      @oferts.each do |ofert|
        lista_ofertas_carrete.push(ofert) if ofert.carrete == carrete
      end
      puts lista_ofertas_carrete
      oferts_descendentes = lista_ofertas_carrete.sort do |a, b|
        if a.bid >= b.bid
          -1
        elsif a.bid <= b.bid
          1
        else
          0
        end
      end

      oferts_descendentes = oferts_descendentes[0, carrete.max_asistentes] if oferts_descendentes.length > carrete.max_asistentes
      oferts_descendentes.each do |ofert|
        @assist = Assist.new
        @assist.user = ofert.user
        @assist.carrete = ofert.carrete
        ofert.destroy if @assist.save
      end
    end
  end

  def new
    @carrete = Carrete.new
  end

  def create
    @carrete_params = params.require(:carrete).permit(:direccion, :costo_total, :estado_busqueda, :imagen, :descripcion, :titulo, :max_asistentes, :comuna, :fecha, :fecha_limite, :dinero_recaudado)
    @contrato_params = params.require(:carrete).permit(:Servicio1, :Servicio2, :Servicio3)
    @carrete = Carrete.create(direccion: @carrete_params[:direccion], costo_total: @carrete_params[:costo_total],
                              estado_busqueda: @carrete_params[:estado_busqueda], imagen: @carrete_params[:imagen],
                              descripcion: @carrete_params[:descripcion], titulo: @carrete_params[:titulo],
                              max_asistentes: @carrete_params[:max_asistentes], fecha: @carrete_params[:fecha],
                              fecha_limite: @carrete_params[:fecha_limite], dinero_recaudado: @carrete_params[:dinero_recaudado])

    @carrete.user = current_user
    @comuna = Comuna.find(@carrete_params[:comuna])
    @carrete.comuna = @comuna
    if @contrato_params[:Servicio1] != ""
      servicio1 = Servicio.find(@contrato_params[:Servicio1])
      contrato1 = Contrato.new
      contrato1 = Contrato.create
      contrato1.carrete = @carrete
      contrato1.servicio = servicio1
      contrato1.save
    end
    if @contrato_params[:Servicio2] != ""
      servicio2 = Servicio.find(@contrato_params[:Servicio2])
      contrato2 = Contrato.new
      contrato2 = Contrato.create
      contrato2.carrete = @carrete
      contrato2.servicio = servicio2
      contrato2.save
    end
    if @contrato_params[:Servicio3] != ""
      servicio3 = Servicio.find(@contrato_params[:Servicio3])
      contrato3 = Contrato.new
      contrato3 = Contrato.create
      contrato3.carrete = @carrete
      contrato3.servicio = servicio3
      contrato3.save
    end

    if @carrete.save
      redirect_to carrete_seleccionado_path(@carrete.id), notice: "Carrete creado con éxito"
    else
      redirect_to carrete_new_path, notice: "Error al crear tu carrete"
    end
  end

  def show
    @carrete = Carrete.find(params[:id])
    if @carrete.fecha_limite <= Time.now
      if @carrete.estado_busqueda == 'Abierto'
        @carrete.update(estado_busqueda: 'Cerrado')
        @oferts = Ofert.all
        lista_ofertas_carrete = []
        @oferts.each do |ofert|
          lista_ofertas_carrete.push(ofert) if ofert.carrete == @carrete
        end
        oferts_descendentes = lista_ofertas_carrete.sort do |a, b|
          if a.bid >= b.bid
            -1
          elsif a.bid <= b.bid
            1
          else
            0
          end
        end

        oferts_descendentes = oferts_descendentes[0, @carrete.max_asistentes] if oferts_descendentes.length > @carrete.max_asistentes
        dinero_recolectado = 0
        oferts_descendentes.each do |ofert|
          dinero_recolectado += ofert.bid
        end
        dinero_anterior = @carrete.dinero_recaudado  #de bids aceptados a mano
        @carrete.update(dinero_recaudado: dinero_anterior + dinero_recolectado)
        if @carrete.dinero_recaudado < @carrete.costo_total
          @carrete.update(estado_busqueda: 'Cerrado-Carrete no pudo cubrir sus costos')
          oferts_descendentes.each do |ofert|
            ofert.destroy
          end

        else
          dinero_ganado = @carrete.dinero_recaudado - @carrete.costo_total
          dueno_carrete = @carrete.user
          dinero_actual = dueno_carrete.dinero
          dueno_carrete.update(dinero: dinero_actual + dinero_ganado)
          oferts_descendentes.each do |ofert|
            @assist = Assist.new
            @assist.user = ofert.user
            @assist.carrete = ofert.carrete
            ofert.destroy if @assist.save
            end
          end
      end
    end
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

  def edit
    @carrete = Carrete.find(params[:id])
  end

  def update
    @carrete = Carrete.find(params[:id])
    @carrete_params = params.require(:carrete).permit(:direccion, :costo_total, :estado_busqueda, :imagen, :descripcion, :titulo, :max_asistentes, :comuna)

    if @carrete.update(@carrete_params)
      redirect_to carrete_seleccionado_path(@carrete.id), notice: "Carrete editado con éxito"
    else
      redirect_to carrete_edit_path(@carrete.id), notice: "Error al editar el servicio"
    end
  end

  def delete
    @carrete = Carrete.find(params[:id])
    @carrete.destroy
    redirect_to carretes_index_path, notice: "Carrete eliminado con éxito"
  end

  def funcion; end

  def funcion2; end

  def funcion3; end

  def funcion4; end

  def funcion5; end

  def funcion6; end

  def funcion7; end
end
