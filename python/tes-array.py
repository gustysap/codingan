array = []
nilai = []
keluar = "x"
#perulangan while for x input
while nilai != keluar:
    nilai = input('masukan nilaimu:  ')
    array.append(nilai)
    print("nilaimu = %s " % array)

print("nilaimu = %s " % array)
array.remove("x")
array_int = [int(arrayint) for arrayint in array]
print(array_int)
print("Jumlah dari nilai yang kamu inputkan adalah : ", sum(array_int))
print("Hasil rata rata nilai yang kamu inputkan adalah : ", sum(array_int) / len(array_int))
