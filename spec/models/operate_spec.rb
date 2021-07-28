RSpec.describe Operate, type: :model do
  context 'When invalid inputs are given to create a comuna' do
    it 'should not create because it not has a nombre' do
      operate = Operate.new
      expect(operate).not_to be_valid
    end
  end
end
