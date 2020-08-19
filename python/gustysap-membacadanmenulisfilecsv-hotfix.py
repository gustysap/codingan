import csv
import os

csv_filename = 'staff.csv'

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def show_menu():
    clear_screen()
    print("=== MENU ===")
    print("[1] Show Data")
    print("[2] Insert Data")
    print("[3] Edit Data")
    print("[4] Delete Data")
    print("[5] Exit")
    print("------------------------")
    selected_menu = input("Pilih menu> ")

    if(selected_menu == "1"):
        show_data()
    elif(selected_menu == "2"):
        insert_data()
    elif(selected_menu == "3"):
        edit_data()
    elif(selected_menu == "4"):
        delete_data()
    elif(selected_menu == "5"):
        exit()
    else:
        print("Kamu memilih menu yang salah!")
        back_to_menu()

def back_to_menu():
    print("\n")
    input("Tekan Enter untuk kembali...")
    show_menu()


def show_data():
    clear_screen()
    staffs = []
    try:
        with open(csv_filename) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=",")
            for row in csv_reader:
                staffs.append(row)

        if (len(staffs) > 0):
            labels = staffs.pop(0)
            print(f"{labels[0]} \t {labels[1]} \t\t {labels[2]}")
            print("-"*34)
            for data in staffs:
                print(f'{data[0]} \t {data[1]} \t {data[2]}')
            print("-" * 34)
        else:
            print("Belum Ada Data")
            back_to_menu()
    except IOError:
        print("-" * 32)
        print("-" * 32)
        print("-" * 32)
        print("---------Belum Ada Data---------")
        print("-" * 32)
        print("-" * 32)
        print("-" * 32)
        with open(csv_filename, mode='w') as csv_file:
            fieldnames = ['NO', 'NAMA', 'SKILL']
            writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
            writer.writeheader()
    finally:
        back_to_menu()


def insert_data():
    clear_screen()
    with open(csv_filename, mode='a') as csv_file:
        print("NO \t NAMA \t\t SKILL")
        print("-" * 32)
        fieldnames = ['NO', 'NAMA', 'SKILL']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)

        no = input("No ID: ")
        nama = input("Nama lengkap: ")
        skills = input("Skill dikuasai: ")

        writer.writerow({'NO': no, 'NAMA': nama, 'SKILL': skills})
        print("Berhasil disimpan!")

    back_to_menu()

def edit_data():
    clear_screen()
    staffs = []

    with open(csv_filename, mode="r") as csv_file:
        csv_reader = csv.DictReader(csv_file)
        for row in csv_reader:
            staffs.append(row)

    print("NO \t NAMA \t\t SKILL")
    print("-" * 32)

    for data in staffs:
        print(f"{data['NO']} \t {data['NAMA']} \t {data['SKILL']}")

    print("-" * 32)
    no = input("Pilih ID> ")
    nama = input("nama baru: ")
    skills = input("skill baru: ")

    #mencari data dan mengubah data dengan baru
    indeks = 0
    for data in staffs:
        if (data['NO'] == no):
            staffs[indeks]['NAMA'] = nama
            staffs[indeks]['SKILL'] = skills
        indeks = indeks + 1

    # Menulis data baru ke file CSV (tulis ulang)
    with open(csv_filename, mode="w") as csv_file:
        fieldnames = ['NO', 'NAMA', 'SKILL']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        for new_data in staffs:
            writer.writerow({'NO': new_data['NO'], 'NAMA': new_data['NAMA'], 'SKILL': new_data['SKILL']})

    back_to_menu()



def delete_data():
    clear_screen()
    staffs = []

    with open(csv_filename, mode="r") as csv_file:
        csv_reader = csv.DictReader(csv_file)
        for row in csv_reader:
            staffs.append(row)

    print("NO \t NAMA \t\t SKILL")
    print("-" * 32)

    for data in staffs:
        print(f"{data['NO']} \t {data['NAMA']} \t {data['SKILL']}")

    print("-" * 32)
    no = input("Hapus ID> ")

    # mencari contact dan mengubah data
    indeks = 0
    for data in staffs:
        if (data['NO'] == no):
            staffs.remove(staffs[indeks])
        indeks = indeks + 1

    # tulis ulang ke csv
    with open(csv_filename, mode="w") as csv_file:
        fieldnames = ['NO', 'NAMA', 'SKILL']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        for new_data in staffs:
            writer.writerow({'NO': new_data['NO'], 'NAMA': new_data['NAMA'], 'SKILL': new_data['SKILL']})

    print("Data sudah terhapus")
    back_to_menu()

if __name__ == "__main__":
    while True:
        show_menu()
