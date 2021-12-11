require 'airport'

describe Airport do
  it 'instruct a plane to land' do
    expect(subject).to respond_to :land
  end
end