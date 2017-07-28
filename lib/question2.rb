=begin
http://www.softantenna.com/wp/software/5-programming-problems/#2
問題2
交互に要素を取ることで、2つのリストを結合する関数を記述せよ。
例えば [a, b, c]と[1, 2, 3]という2つのリストを与えると、関数は [a, 1, b, 2, c, 3]を返す。
=end

def zip(l1, l2)
    if l1.empty?
        l2
    elsif l2.empty?
        l1
    else
        [l1.first, l2.first, *zip(l1.drop(1), l2.drop(1))]
    end
end
# p zip(%w(a b c), %w(1 2 3))
# p zip(%w(a b c d), %w(1 2 3))
# p zip(%w(a b c), %w(1 2 3 4))
