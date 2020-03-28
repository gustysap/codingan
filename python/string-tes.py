paragraf = "NolSatu hadir sebagai usAha untuk merespon masalah bersama yaitu banyak lulusan teknologi informatika atau profesional teknologi informatika yang kemampuannya kuranG sementara perusahaan-perusahaan membutuhkan profesional teknologi informatika terbaik dengan kemampuan terkini. Selain itu, perkembangan teknologi informatika global Berlangsung sangat cepat dan kemampuan profesional teknologi informatika disarankan selaras dengan perkembangan tersebut. Profesional teknologi informatika diharapkan dapat membantu perusahaan dalaM mengadopsi teknologi informatika terkini untuk mendOrong proses bisnis perusahaan. Imbal balik bagi profesional teknologi informatika dari proses ini adalah penghasilan yang cukup dan kesejahteraAN yang baik yang diberikan oleh perusahaaN. NolSatu adalah media untuk Talenta teknologi informatika dilatih agar memiliki kemampuan terkini kemudian disalurkan ke perusahaan yang membutuhkan. NolSatu juga media untuk Profesional teknologi informatika dilatih agar kemampuannya termutakhirkan kemudian disalurkan ke perusahaan baru yang membutuhkan."

#soal nomor 1
print("Berapa banyak huruf kapital? ", sum(1 for i in paragraf if i.isupper()))

#soal nomor 2
print("Ada berapa kata dalam paragraf? ", len(paragraf.split(" ")))
#print(paragraf.split(".")) #fordebug

#soal nomor 3
paragrafsplit = paragraf.lstrip(". ").replace(". ", ".\n")
#print(paragrafsplit) #fordebug
paragrafsplit = paragrafsplit.splitlines()
print("Ada berapa kalimat? ", len(paragrafsplit))
#print(paragrafsplit) #fordebug

#soal nomor 4
jumlah_paragrafsplit_nolsatu = 0
for jumlah_nolsatu in paragrafsplit:
    if jumlah_nolsatu.startswith("NolSatu") and jumlah_nolsatu.endswith("membutuhkan."):
        #print(jumlah_nolsatu) #fordebug
        jumlah_paragrafsplit_nolsatu = jumlah_paragrafsplit_nolsatu+1
print("Ada berapa kalimat yang diawali dengan kata 'nolsatu dan diakhiri dengan kata membutuhkan'? ", jumlah_paragrafsplit_nolsatu)
    
#soal nomor 5
print("Ubah setiap kalimat menjadi capitalize. ")
kapitalize = []
for kapitalise in paragrafsplit:
    #print(kapitalise.capitalize()) #fordebug
    kapitalize.append(kapitalise.capitalize())
#print(kapitalize) #fordebug
print(" ".join(kapitalize))
