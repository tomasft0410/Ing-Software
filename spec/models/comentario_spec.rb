require 'rails_helper'

RSpec.describe Comentario, type: :model do
  # it 'should create correctly' do
#     comentario = Comentario.new(servicio: Servicio.create[{nombre: 'Limpieza', descripcion: 'Servicio de limpieza', max_capacidad: 1000,
#                                 imagen: 'https://mydatascope.com/blog/wp-content/uploads/2018/10/limpieza-1200x800.jpg',
#                                 precio: 100_000, status: '', id_creador: 1}], usuario: 2, contenido: 'Muy buen servicio!', fecha_hora: '2020-04-20 04:20:00')#
#     expect(comentario).to be_valid
 #  end

  context 'When invalid inputs are given to create a comentarios' do
    it 'should not create because it not has a servicio' do
      comentario = Comentario.new(usuario: 1, contenido: 'Muy mal servicio!', fecha_hora: '2020-04-20 04:20:00')
      expect(comentario).not_to be_valid
    end
  end
end
