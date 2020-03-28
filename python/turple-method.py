a = [3, 2, 1, 5, 4, 3, 3]

print(a)

#hitung banyak suatu elemen yang mirip
print(a.count(3))

#melihat indeks
print(a.index(4))
print(a.index(3))

#mengubah isi tuple
t = list(a)
t[0] = 100
t[1] = 200
a = tuple(t)

print(a)
