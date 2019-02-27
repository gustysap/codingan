system "clear"
print 'Masukan Usernamemu :  '
username = gets.strip
print 'Masukan Passwordmu :  '
password = gets.strip
system "clear"
if username == 'gustyganteng' && password == 'password' || username == 'gustykeren'
  puts 'Kamu Berhasil Login'

  print 'Masukan Nilaimu :   '
  nilai = gets.chomp.to_i
  if nilai >= 85
    puts 'Maka Nilainya adalah A'
  elsif nilai >= 70
    puts 'Maka Nilainya adalah B'
  elsif nilai >= 60
    puts 'Maka Nilainya adalah C'
  elsif nilai >= 50
    puts 'Maka Nilainya adalah D'
  else
    puts 'Remed Goblok'
  end
else
  puts 'Password Salah'
end

