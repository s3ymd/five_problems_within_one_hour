=begin
http://www.softantenna.com/wp/software/5-programming-problems/#1
問題1
forループ、whileループ、および再帰を使用して、リスト内の数字の合計を計算する3つの関数を記述せよ。
=end

list = *1..10

# for loop
sum = 0
for i in list
    sum += i
end
p sum

# while loop
sum = 0
i = 0
while i < list.size
    sum += i.next
    i += 1
end
p sum

# recursion
def sum(nums, result = 0) 
    if nums.empty?
        result
    else
        first, *rest = nums
        sum(rest, result + first)
    end
end
p sum(list)
