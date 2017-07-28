=begin
http://www.softantenna.com/wp/software/5-programming-problems/#5
問題5
1,2,…,9の数をこの順序で、"+"、"-"、またはななにもせず
結果が100となるあらゆる組合せを出力するプログラムを記述せよ。
例えば、1 + 2 + 34 – 5 + 67 – 8 + 9 = 100となる。
=end

def exp100
    nums = *1..9
    ops = ['+', '-', '']

    nums.inject { |memo, n|
        ops.map { |op| 
            Array(memo).map { |pat| 
                "#{pat}#{op}#{n}"
            }
        }.flatten
    }.select {|exp| eval(exp) == 100}
end

puts exp100