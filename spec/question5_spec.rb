describe 'exp100 function' do
    it 'returns sum of list' do
        results = exp100
        expect(results.size).to eq(11) # 答えは11パターン存在することがわかっている
        exp100.each do |exp|
            expect(eval(exp)).to eq(100)
        end
    end
end
