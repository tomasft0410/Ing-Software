require 'rails_helper'

RSpec.describe Carrete, type: :model do
  # it 'should create correctly' do
    # user = User.new(dinero:100, tipo:'Cliente', telefono:982813771, edad:21, username:'tomasft', email:'tomasfdezt@gmail.com', password:'colocolo')
    # carrete = Carrete.new(direccion: 'La Invernada 7005', costo_total: '100000', estado_busqueda: 'Nose', imagen: 'FARRA', descripcion: 'Carrete con tuty', titulo: 'FARRUKO CASA FE', max_asistentes: 200)
    # expect(carrete).to be_valid
  # end

  context 'When invalid inputs are given to create a carrete' do
    it 'should not create because it not has a direccion' do
      carrete = Carrete.new(costo_total: '100000', estado_busqueda: 'Nose', imagen: 'FARRA', descripcion: 'Carrete con tuty', titulo: 'FARRUKO CASA FE', max_asistentes: 200, comuna: Comuna.create[{ nombre: "Vitacura" }])
      expect(carrete).not_to be_valid
    end

    it 'should not create because max_asistentes is off limit' do
      carrete = Carrete.new(direccion: 'La Invernada 7005', costo_total: '100000', estado_busqueda: 'Nose', imagen: 'FARRA', descripcion: 'Carrete con tuty', titulo: 'FARRUKO CASA FE', max_asistentes: 20_000)
      expect(carrete).not_to be_valid
    end
  end
end
