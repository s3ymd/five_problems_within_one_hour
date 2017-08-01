describe 'zip function' do
  it 'returns zip of two lists' do
    result = zip(%w[a b c], %w[1 2 3])
    expect(result).to eq(%w[a 1 b 2 c 3])
  end
  it 'returns zip of two lists (first is longer then second)' do
    result = zip(%w[a b c d], %w[1 2 3])
    expect(result).to eq(%w[a 1 b 2 c 3 d])
  end
  it 'returns zip of two lists (first is shorter then second)' do
    result = zip(%w[a b c], %w[1 2 3 4])
    expect(result).to eq(%w[a 1 b 2 c 3 4])
  end
end
