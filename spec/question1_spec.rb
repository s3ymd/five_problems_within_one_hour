describe 'sum functions' do
    let :list {[*1..10]}
    let :correct_result {list.sum}
    describe 'sum_for' do
        it 'returns sum of list' do
            expect(sum_for(list)).to eq(correct_result)
        end
    end
    describe 'sum_while' do
        it 'returns sum of list' do
            expect(sum_while(list)).to eq(correct_result)
        end
    end
    describe 'sum_recursion' do
        it 'returns sum of list' do
            expect(sum_recursion(list)).to eq(correct_result)
        end
    end
end
