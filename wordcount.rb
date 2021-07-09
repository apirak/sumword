filename = "words"

def wordcount(word)
  #word.chomp.bytes.sum { |char| char.ord - 96 }
  word.chomp.split(//).sum { |char| char.ord - 96 }
end

count = 0
File.readlines(filename, :encoding => "ASCII").each do |line|
  if wordcount(line) == 100 
    puts "Word: #{line}"
    count += 1
  end
end
puts "Count: #{count}"
