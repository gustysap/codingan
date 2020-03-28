nilai = input("Masukan Nilai: ")
nilai = int(nilai)

if nilai > 80:
    print ("Selamat, kamu dapat nilai A")
    if nilai > 95 and nilai <=99:
        print ("Selamat kamu dapat liburan ke Bali")
    elif nilai == 100:
        print ("Wah gila sih ke eropa gih")
elif nilai > 70 and nilai <=80:
    print ("Selamat, kamu dapat nilai B")
elif nilai > 60 and nilai <=70:
    print ("Selamat, kamu dapat nilai C")
elif nilai > 45 and nilai <=60:
    print ("Selamat, kamu dapat nilai D")
else:
    print (" Nilai E Remedial woiii :(")
