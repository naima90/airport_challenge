require 'airport'

describe Airport do
  it 'instruct a plane to land' do
    expect(subject).to respond_to :land
  end

  it 'instruct a plane to take-off' do
    expect(subject).to respond_to :take_off
  end
end