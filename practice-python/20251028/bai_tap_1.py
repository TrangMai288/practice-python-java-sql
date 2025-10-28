# Đề bài: Quản lý sản phẩm
# • Product: gồm thuộc tính name, price, quantity
# • ProductManager: quản lý danh sách sản phẩm, có các hàm:
# 1. add_product(name, price, quantity) – thêm sản phẩm
# 2. show_all() – in toàn bộ sản phẩm
# 3. calculate_total_value() – tính tổng giá trị kho (price × quantity)
# 👉 Sau đó:
# + Tạo ít nhất 3 sản phẩm
# + Gọi các hàm để hiển thị danh sách và in tổng giá trị kho

class Product:
    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity
    
    def __str__(self):
        return f"Name: {self.name}, Price: {self.price:,} VND, Quantity: {self.quantity}"
 
class ProductManager:
    def __init__(self):
        self.products = []
        
    def add_product(self, product):
        self.products.append(product)
        
    def show_all(self):
        for i in self.products:
            print(i)
        
    def calculate_total_value(self):
        total_value = 0
        for i in self.products:
            total_value += i.price * i.quantity
        print(f"Tong gia tri kho = {total_value:,} VND")
        
product1 = Product("san pham 1", 10000, 5)
product2 = Product("san pham 2", 20000, 4)
product3 = Product("san pham 3", 30000, 3)

product_manager = ProductManager()
product_manager.add_product(product1)
product_manager.add_product(product2)
product_manager.add_product(product3)

product_manager.show_all()
product_manager.calculate_total_value()