describe 'fibonacci function' do
  # 最初の10個のフィボナッチ数
  let :fib_first_10 {[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]}

  # 100番目のフィボナッチ数
  # http://www.suguru.jp/Fibonacci/fib1-10000/fib1-1000.html
  # ただし本プログラムでは0, 1, 1, ... と、先頭を0とする計算を行うため、F(99)を利用
  let :fib_100 {218922995834555169026}

  it 'returns fibonacci sequences' do
    fibs = fib.take(100)
    expect(fibs[0...10]).to eq(fib_first_10)
    expect(fibs.last).to eq(fib_100)
  end
end
