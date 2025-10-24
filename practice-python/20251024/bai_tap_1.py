class Car:
    def __init__(self, brand, year, price):
        self.brand = brand
        self.year = year
        self.price = price
        
    def show_info(self):
        print(f"Mau xe: {self.brand}, Nam: {self.year}, Gia tien: {self.price}")
        
    def discount(self, percent):
        price_after_percent = self.price - self.price * percent / 100
        print(f"Gia sau giam la {price_after_percent}")
        
car1 = Car("BMW", 2025, 15000)
car2 = Car("Toyota", 2020, 500000)

car1.show_info()
car1.discount(10)

car2.show_info()
car2.discount(10)