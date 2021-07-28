require 'rails_helper'

RSpec.describe Contrato, type: :model do
  context 'When invalid inputs are given to create a comuna' do
    it 'should not create because it not has a nombre' do
      contrato = Contrato.new
      expect(contrato).not_to be_valid
    end
  end
end
