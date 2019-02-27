nilai = [60, 70, 80, 90, 65, 100, 95, 20, 50]

nilai_baru = []

nilai.each do |item|
  if item >= 70
    nilai_baru << item
  end
end

puts nilai_baru

puts '============================='

nilai_baru = nilai.select do |item|
  item >= 70
end

puts nilai_baru
