class Car:
    merk = ""
    color = ""

    def __init__(self, color="black", merk="unknown"):
        self.color = color
        self.merk = merk

    def start_engine(self):
        print ("Starting the car... ")
        print ("color: %s" % self.color)
        print ("merk: %s" % self.merk)
        print ("Stop the car... \n\n")


car = Car()
car2 = Car(color="red", merk="Isuju")

car.start_engine()
car2.start_engine()
