RSpec.describe Ofert, type: :model do
  context 'When invalid inputs are given to create a comuna' do
    it 'should not create because it not has a nombre' do
      ofert = Ofert.new
      expect(ofert).not_to be_valid
    end
  end
end
