class Product:
    def __init__(self, name, price):
        self.name = name
        self.price = price
        
    def show_info(self):
        print(f"Name: {self.name}, Price: {self.price}")
        
class ElectronicProduct(Product):
    def __init__(self, name, price, brand, warranty_years):
        super().__init__(name, price)
        self.brand = brand
        self.warranty_years = warranty_years
        
    def show_info(self):
        super().show_info()
        print(f"Name: {self.name}, Price: {self.price}, Brand: {self.brand}, Warranty years: {self.warranty_years}")

if __name__ == "__main__":
    product1 = Product("san pham goc", 10000)
    electronic_product_1 = ElectronicProduct("san pham electronic 1", 1000, "Samsung", 1)
    electronic_product_2 = ElectronicProduct("san pham electronic 2", 2000, "LG", 2)
    
    product1.show_info()
    electronic_product_1.show_info()
    electronic_product_2.show_info()
    