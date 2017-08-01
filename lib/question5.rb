# http://www.softantenna.com/wp/software/5-programming-problems/#5
# 問題5
# 1,2,…,9の数をこの順序で、"+"、"-"、またはななにもせず
# 結果が100となるあらゆる組合せを出力するプログラムを記述せよ。
# 例えば、1 + 2 + 34 – 5 + 67 – 8 + 9 = 100となる。

# def exp100
#   nums = *1..9
#   ops = ['+', '-', '']
#   nums.inject do |memo, n|
#     ops.map do |op|
#       Array(memo).map do |pat|
#         "#{pat}#{op}#{n}"
#       end
#     end.flatten
#   end.select { |exp| eval(exp) == 100 }
# end

# def exp100
#   ops = ['+', '-', '']
#   [*2..9]
#     .inject([[1]]) { |a, b| a << ops << [b] }
#     .inject(&:product)
#     .map(&:flatten)
#     .map(&:join)
#     .select { |e| eval(e) == 100 }
# end

def exp100
  ops = ['+', '-', '']
  [*1..9]
    .flat_map { |n| [[n], ops] }
    .tap(&:pop)
    .inject(&:product)
    .map(&:flatten)
    .map(&:join)
    .select { |e| eval(e) == 100 }
end

# puts exp100
