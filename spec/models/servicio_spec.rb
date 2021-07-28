require 'rails_helper'

RSpec.describe Servicio, type: :model do
  # it 'should create correctly' do
    # user = User.new(dinero:100, tipo:'Cliente', telefono:982813771, edad:21, username:'tomasft', email:'tomasfdezt@gmail.com', password:'colocolo')
    # servicio = Servicio.new(nombre: 'Limpieza', descripcion: 'Servicios de limpieza', max_capacidad: 1000, imagen: 'LIMPIEZA', precio: 15_000, status: 'Activo')
    # expect(servicio).to be_valid
  # end

  context 'When invalid inputs are given to create a comentarios' do
    it 'should not create because it not has a nombre' do
      servicio = Servicio.new(descripcion: 'Servicios de limpieza', max_capacidad: 1000, imagen: 'LIMPIEZA', precio: 15_000, status: 'Activo')
      expect(servicio).not_to be_valid
    end

    it 'should not create because precio is off limit' do
      servicio = Servicio.new(nombre: 'Limpieza', descripcion: 'Servicios de limpieza', max_capacidad: 1000, imagen: 'LIMPIEZA', precio: 1_500_000, status: 'Activo')
      expect(servicio).not_to be_valid
    end
  end
end
