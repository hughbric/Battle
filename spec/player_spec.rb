require 'player'

describe Player do
  let(:david) { Player.new('David') }
  context '#name' do
    it 'returns the name' do
      expect(david.name).to eq('David')
    end
  end

end