#inisialisasi variabel
array = []
nilai = []
keluar = "x"
print("Halo selamat datang di program menghitung rata rata nilai yang diinputkan")
print("Untuk melihat hasil atau keluar harap masukan huruf x")
print("")
#perulangan while for x input
while nilai != keluar:
    nilai = input('masukan nilaimu:  ')
    array.append(nilai)
#fordebug    
#    print("nilaimu = %s " % array)

#fordebug
#print("nilaimu = %s " % array)
array.remove("x")
array_int = [int(arrayint) for arrayint in array]
#fordebug
#print(array_int)
print("Jumlah dari nilai yang kamu inputkan adalah : ", sum(array_int))
print("Hasil rata rata nilai yang kamu inputkan adalah : ", sum(array_int) / len(array_int))
