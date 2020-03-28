angka = input("Masukan angka : ")
angka = int(angka)

if angka > 0:
    if (angka % 2) == 0:
        print ("%i bilangan genap" % angka)
    else:
        print ("%i bilangan ganjil" % angka)
else:
    print ("%i bukan bilangan positif" % angka)
