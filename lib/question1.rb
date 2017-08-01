=begin
http://www.softantenna.com/wp/software/5-programming-problems/#1
問題1
forループ、whileループ、および再帰を使用して、リスト内の数字の合計を計算する3つの関数を記述せよ。
=end

# for loop
def sum_for(list)
    sum = 0
    for i in list
        sum += i
    end
    sum
end

# while loop
def sum_while(list)
    sum = 0
    i = 0
    while i < list.size
        sum += list[i]
        i += 1
    end
    sum
end

# recursion
def sum_recursion(nums, result = 0) 
    if nums.empty?
        result
    else
        first, *rest = nums
        sum_recursion(rest, result + first)
    end
end

# list = *1..10
# p sum_for(list)
# p sum_while(list)
# p sum_recursion(list)
