require 'airport'
require 'plane'

describe Airport do
  it 'instruct a plane to land' do
    expect(subject).to respond_to(:land).with(1).argument
  end

  it 'instruct a plane to take-off' do
    expect(subject).to respond_to :take_off
  end

  it 'prevent landing if airport is full' do
    plane = Plane.new
    Airport::DEFAULT_CAPACITY.times { subject.land(plane) } 
    expect { subject.land(plane) }.to raise_error 'Airport is full'
  end

  it 'capacity to be overridden for new-airports' do
    new_airport = Airport.new(50)
    capacity = Airport::DEFAULT_CAPACITY
    expect(new_airport.capacity).to eq 50
  end

  it 'prevents take-off when weather is stormy' do
    allow(subject).to receive(:stormy?).and_return true
    expect {subject.take_off(:plane) }.to raise_error 'can not land as weather is stormy'
  end
end