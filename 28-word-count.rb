# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")


# way1
# count = Hash.new(0)
# doc.each_line do |line|
#   line = line.chomp
#   line = line.gsub(/[,'".]/, '')
#   line = line.strip
#   words = line.split("")
#   words.each do |word|
#     count[word]+=1
#   end
# end
# puts "每个单字出现的次数如下："
# count.each do |key, value|
#   puts "#{key}:#{value}"
# end

# way2
# count = Hash.new(0)
# doc.each_line do |line|
#   line = line.gsub(/[,'".]/, '')
#   line = line.strip
#   words = line.split("")
#   words.each { |word| count[word] += 1 }
# end
#
# puts "每个单字出现的次数如下："
# count.each do |key, value|
#   puts "#{key}:#{value}"
# end

# way3
# words = doc.downcase.scan(/\w+/)
# result = {}
# words.each do |i|
#   result[i] = words.count(i)
# end
# words.each {|i| result[i] = words.count(i)}

# result = words.each_with_object(Hash.new(0)) { |i, hash| hash[i] += 1 }
# puts result

# way4
# words = doc.downcase.scan(/\w+/)
# words.uniq.each do |i|
#   puts "#{i} 出现#{words.count(i)}次"
# end

# way5
arr = doc.split("")
h = {}
arr.uniq.each do |i|
  h[i] = arr.count(i)
end
puts h
