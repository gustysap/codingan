a = [3, 2, 1, 5, 4, 3, 3]

print("a = %s" % a)

#function di python untuk operasi list
print ("sum(a) = %s" % sum(a))
print ("max(a) = %s" % max(a))
print ("min(a) = %s" % min(a))

#hitung banyak suatu elemen yang mirip
print(a.count(3))

#melihat indeks
print(a.index(4))
print(a.index(5))

#mengubah isi list
a.append(10)
print(a)

a.insert(3, 20)
print(a)

a.remove(20)
print(a)
