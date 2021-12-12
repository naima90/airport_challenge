require 'airport'
require 'plane'

describe Airport do
  # subject(:airport) { described_class.new(20) }
  it 'instruct a plane to land' do
    expect(subject).to respond_to :land
  end

  it 'instruct a plane to take-off' do
    expect(subject).to respond_to :take_off
  end

  it 'prevent landing if airport is full' do
    plane = Plane.new
    20.times { subject.land(plane) } 
    expect { subject.land(plane) }.to raise_error 'airport is full'
  end
end