describe 'max function' do
    it 'returns max number' do
        expect(max([1,2,3])).to eq(321)
        expect(max([50, 2, 1, 9])).to eq(95021)
    end
end
