test = lambda do |angka_satu, angka_dua|
  angka_satu * angka_dua
end

test2 = -> (angka_satu, angka_dua) do
  angka_satu / angka_dua
end

hasil = test.call(5, 6)
#hasil = test[5, 6]
puts hasil
hasil = test2.call(10, 5)
puts hasil

