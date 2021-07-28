require 'rails_helper'

RSpec.describe ValoracionCarrete, type: :model do
  # it 'should create correctly' do
    # valoracion = ValoracionCarrete.new(usuario: 1, puntuacion: 10, carrete: Carrete.create[{ titulo: 'Cumpleanos Tomas', direccion: 'La Invernada 7005', max_asistentes: 500, costo_total: 250_000,
    #                              imagen: 'http://cineycomedia.com/wp-content/uploads/2012/06/PXD-004283rv3.jpg',
    #                              descripcion: 'Cumpleanos de Tomas a las 22:00', estado_busqueda: 'Buscando personas', id_creador: 1, comuna: Comuna.create[{nombre: "Vitacura"}]}])
    # expect(valoracion).to be_valid
 #  end

  context 'When invalid inputs are given to create a valoracion' do
    it 'should not create because it not has a usuario' do
      valoracion = ValoracionCarrete.new(puntuacion: 10, carrete: Carrete.create[{ titulo: 'Cumpleanos Tomas', direccion: 'La Invernada 7005', max_asistentes: 500, costo_total: 250_000,
                                                                                   imagen: 'http://cineycomedia.com/wp-content/uploads/2012/06/PXD-004283rv3.jpg',
                                                                                   descripcion: 'Cumpleaños de Tomas a las 22:00', estado_busqueda: 'Buscando personas', id_creador: 1, comuna: Comuna.create[{ nombre: "Vitacura" }] }])
      expect(valoracion).not_to be_valid
    end

    it 'should not create because puntuacion is off limit' do
      valoracion = ValoracionCarrete.new(usuario: 1, puntuacion: 15, carrete: Carrete.create[{ titulo: 'Cumpleanos Tomas', direccion: 'La Invernada 7005', max_asistentes: 500, costo_total: 250_000,
                                                                                               imagen: 'http://cineycomedia.com/wp-content/uploads/2012/06/PXD-004283rv3.jpg',
                                                                                               descripcion: 'Cumpleaños de Tomas a las 22:00', estado_busqueda: 'Buscando personas', id_creador: 1, comuna: Comuna.create[{ nombre: "Vitacura" }] }])
      expect(valoracion).not_to be_valid
    end
  end
end
