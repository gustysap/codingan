import tkinter as tk # mengimpor modul tkinter dan menamakannya tk
class Application(tk.Frame): # membuat class Application sebagai warisan dari class Frame milik tkinter
def init(self, master=None): # ini adalah constructor dari class Frame dan akan dijalankan pertama kali
tk.Frame.init(self, master) # menjalankan contructor
self.grid() # menampilkan window utama ke screen
self.createWidgets()

def createWidgets(self):

# first field
self.field1 = tk.Entry(self,width=5) # membuat field isian bilangan pertama
self.field1.insert(0, "") # isian dikosongkan
self.field1.grid(row=0,column=0) # posisi widget dalam grid

self.label = tk.Label(self, text = "+") # membuat label "+"
self.label.grid(row=0,column=1) # posisi widget dalam grid

# second field
self.field2 = tk.Entry(self,width=5) # membuat field isian bilangan kedua
self.field2.insert(0, "") # isian dikosongkan
self.field2.grid(row=0,column=2) # posisi widget dalam grid

self.label2 = tk.Label(self, text = "=") # membuat label "="
self.label2.grid(row=0,column=3) # posisi widget dalam grid

# third field for answer
self.field3 = tk.Entry(self,width=5) # membuat field untuk menampilkan jawaban
self.field3.grid(row=0,column=4) # posisi widget dalam grid

# QUIT button
self.QUIT = tk.Button(self, text="QUIT",command=root.destroy) # membuat QUIT button
self.QUIT.grid(row=1,column=0) # posisi widget dalam grid

# ADD button
self.ADD = tk.Button(self) # membuat ADD button
self.ADD["text"] = "ADD" # tulisan pada button
self.ADD["command"] = self.add_numbers # method yang akan dijalankan jika button di-klik
self.ADD.grid(row=1,column=4) # posisi widget dalam grid

def add_numbers(self): # method untuk menjumlahkan dua angka
a = self.field1.get() # mengambil angka dari isian pertama
b = self.field2.get() # mengambil angka dari isian kedua
c = int(a)+int(b) # data yang diambil adalah string. Jadi harus dikonversi dulu ke Integer sebelum bisa dijumlahkan
d = str(c) # hasil penjumlahan adalah Integer yang harus dikonversi dulu menjadi String sebelum bisa ditampulkan
self.field3.delete(0) # menghapus isi field jawaban
self.field3.insert(0,d) # menuliskan jawaban

root = tk.Tk()

# modify root window
root.title("Mini calculator ver.1") # title window aplikasi
root.geometry("200×60") # panjang dan tinggi window aplikasi

app = Application(master=root)
app.mainloop()

