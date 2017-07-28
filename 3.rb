=begin
http://www.softantenna.com/wp/software/5-programming-problems/#3
問題3
最初の100個のフィボナッチ数のリストを計算する関数を記述せよ。
定義では、フィボナッチ数列の最初の2つの数字は0と1で、次の数は前の2つの合計となる。
例えば最初の10個のフィボナッチ数列は、0, 1, 1, 2, 3, 5, 8, 13, 21, 34となる。
=end

class Fib
    def initialize
        @a, @b = 0, 1
    end
    
    def each
        loop do
            yield @a
            @a, @b = @b, @a + @b
        end
    end
end

def fib
    Fib.new.to_enum
end

puts fib.take(100)

