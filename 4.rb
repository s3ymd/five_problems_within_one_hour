=begin
http://www.softantenna.com/wp/software/5-programming-problems/#4
問題4
正の整数のリストを与えられたとき、数を並び替えて可能な最大数を返す関数を記述せよ。
例えば、[50, 2, 1, 9]が与えられた時、95021が答えとなる。
=end

def max(nums)
    nums.permutation.map {|nums|nums.join.to_i}.max
end

list = [50, 2, 1, 9]
p max(list)

