def fibonacci(bil):
  fibo_minus_satu = 0
  fibo_minus_dua = 0
  fibo_hasil = 0
  for x in range(1,bil+1):
    fibo_minus_dua = fibo_minus_satu
    fibo_minus_satu = fibo_hasil
    if x<=2:
      fibo_hasil = 1
    else:
      fibo_hasil = fibo_minus_satu + fibo_minus_dua
  return fibo_hasil

print('Menghitung bilangan fibonacci menggunakan for loop')
angka = int(input('Masukkan sebuah bilangan '))
fibonacci_bil = fibonacci(angka)
print('Bilangan fibonacci ke-{} adalah {}'.format(angka,fibonacci_bil))
