file = File.read('_saya.txt')
array = file.split("\n")
puts array.inspect

File.open('_saya.txt', 'r') do |f|
  f.each_line do |line|
    puts line
  end
end

