# 题目: 使用者输入 x,y,z，请输出三个数中最大的数

def find_max(x, y, z)
  if x > y

    if x > z
      return x
    elsif x <= z
      return x
    end

  elsif x < y
    if y > z
      return y
    elsif y <= z
      return z
    end

  elsif x = y
    if x > z
      return x
    elsif x <= z
      return x
    end

  end
end


print "请输入一个数字x，然后按 Enter: "
x = gets.to_f

print "请输入一个数字y，然后按 Enter: "
y = gets.to_f

print "请输入一个数字z，然后按 Enter: "
z = gets.to_f

# ....

answer = find_max(x,y,z)

puts "最大的数是 #{answer}"
