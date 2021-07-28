require 'rails_helper'

RSpec.describe Comuna, type: :model do
  it 'should create correctly' do
    comuna = Comuna.new(nombre: 'Vitacuma')
    expect(comuna).to be_valid
  end

  context 'When invalid inputs are given to create a comuna' do
    it 'should not create because it not has a nombre' do
      comuna = Comuna.new
      expect(comuna).not_to be_valid
    end
  end
end
