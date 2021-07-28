require 'rails_helper'

RSpec.describe ValoracionServicio, type: :model do
  # it 'should create correctly' do
    # valoracion = ValoracionServicio.new(usuario: 1, puntuacion: 10, servicio: Servicio.create[{nombre: 'Limpieza', descripcion: 'Servicio de limpieza', max_capacidad: 1000,
    #                             imagen: 'https://mydatascope.com/blog/wp-content/uploads/2018/10/limpieza-1200x800.jpg',
    #                             precio: 100_000, status: '', id_creador: 1}])
    # expect(valoracion).to be_valid
  # end

  context 'When invalid inputs are given to create a valoracion' do
    it 'should not create because it not has a usuario' do
      valoracion = ValoracionServicio.new(puntuacion: 10, servicio: Servicio.create[{ nombre: 'Limpieza', descripcion: 'Servicio de limpieza', max_capacidad: 1000,
                                                                                      imagen: 'https://mydatascope.com/blog/wp-content/uploads/2018/10/limpieza-1200x800.jpg',
                                                                                      precio: 100_000, status: '', id_creador: 1 }])
      expect(valoracion).not_to be_valid
    end

    it 'should not create because puntuacion is off limit' do
      valoracion = ValoracionServicio.new(usuario: 1, puntuacion: 15, servicio: Servicio.create[{ nombre: 'Limpieza', descripcion: 'Servicio de limpieza', max_capacidad: 1000,
                                                                                                  imagen: 'https://mydatascope.com/blog/wp-content/uploads/2018/10/limpieza-1200x800.jpg',
                                                                                                  precio: 100_000, status: '', id_creador: 1 }])
      expect(valoracion).not_to be_valid
    end
  end
end
