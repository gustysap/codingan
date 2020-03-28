# import library yang dibutuhkan

import csv

 

# membuat list daftar siswa yang akan di tulis ke dalam file

siswa = [

    ('arslan', 'A', 90),

    ('bayu', 'B', 85),

    ('niko', 'A', 80),

    ('abdul', 'B', 90),

    ('dahlan', 'C', 70)

]

 

# tentukan lokasi file, nama file, dan inisialisasi csv

# jika nama file belum ada maka akan dibuat baru, jika sudah ada akan di replace

f = open('siswa.csv', 'w') 

 

# intansiasi variabel w sebagai objek csv 

w = csv.writer(f)

 

# menulis ke dalam file untuk baris pertama

w.writerow(('Nama','Kelas','Nilai'))

 

# menulis ke dalam file dengan cara melooping nama siswa

for s in siswa:

    w.writerow(s)

 

# menutup file csv

f.close()
