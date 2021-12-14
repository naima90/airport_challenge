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
end