# library yang dibutuhkan untuk membaca csv

import csv

# tentukan lokasi file, nama file, dan inisialisasi csv

f = open('siswa.csv', 'r')

 

# membaca file dan menyimpannya ke variabel reader

reader = csv.reader(f)

# membaca baris per baris

for row in reader:

    print(row)

# menutup file csv

f.close()
