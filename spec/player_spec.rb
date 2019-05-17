describe Player do
  let(:david) { Player.new('David') }
  let(:goliath) { Player.new('Goliath') }

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq('David')
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(david.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { david.receive_damage }.to change { david.hit_points }.by(-10)
    end
  end
end