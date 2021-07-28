require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should create correctly' do
    user = User.new(dinero: 100, tipo: 'Cliente', telefono: 982_813_771, edad: 21, username: 'tomasft', email: 'tomasfernandezt@gmail.com', password: 'colocolo')
    expect(user).to be_valid
  end
end
