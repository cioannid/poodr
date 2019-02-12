require_relative 'gear'

RSpec.describe Gear do
  describe '#ratio' do
    it 'computes the ratio of `big` gear' do
      gear = Gear.new(52, 11, nil, nil)

      expect(gear.ratio).to be_within(0.01).of(4.73)
    end

    it 'computes the ration of `small` gear' do
      gear = Gear.new(30, 27, nil, nil)

      expect(gear.ratio).to be_within(0.01).of(1.12)
    end

    it 'returns `Infinity` when cog is zero' do
      gear = Gear.new(42, 0, nil, nil)

      expect(gear.ratio).to eq(Float::INFINITY)
    end
  end

  describe '#gear_inches' do
    it 'computes the gear inches for a big wheel' do
      gear = Gear.new(52, 11, 26, 1.5)

      expect(gear.gear_inches).to be_within(0.01).of(137.09)
    end

    it 'computes the gear for a smaller wheel' do
      gear = Gear.new(52, 11, 24, 1.25)

      expect(gear.gear_inches).to be_within(0.01).of(125.27)
    end
  end
end
