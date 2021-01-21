filename = "words"

def wordcount(word)
  sum = 0
  word.chomp.split(//).each do |char|
    sum += (char.ord - 96)
  end
  return sum
end

count = 0
File.readlines(filename, :encoding => "ASCII").each do |line|
  if wordcount(line) == 100 
    puts "Word: #{line}"
    count += 1
  end
end
puts "Count: #{count}"
