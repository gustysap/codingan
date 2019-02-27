nama = [1, 2, 3, 4, 5]

new_nama = []

nama.each do |item|
  new_nama << item * 5
end

puts new_nama

puts '============='

baru_nama = nama.map do |item|
  item * 10
end

puts baru_nama
