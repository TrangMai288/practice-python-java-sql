# Đề bài: Quản lý sản phẩm
# Tạo chương trình Python có class ProductManager với các chức năng sau:
# 1. Thêm sản phẩm mới (tên, giá, số lượng)
# 2. Hiển thị toàn bộ sản phẩm
# 3. Tìm sản phẩm theo tên (in ra thông tin nếu có)
# 4. Tính tổng giá trị hàng tồn kho (giá × số lượng)

class ProductManager:
    def __init__(self):
        self.products = []
        
    def add_product(self, name, price, quantity):
        self.products.append({"name": name, "price": price, "quantity": quantity})
        
    def show_all_products(self):
        print("\nDanh sách sản phẩm:")
        for p in self.products:
            print(p)
            
    def find_product_by_name(self, name):
        print(f"\nTìm sản phẩm với tên là '{name}': ")
        found = False
        for p in self.products:
            if p['name'] == name:
                print(p)
                found = True
        if not found:
            print("Không tìm thấy sản phẩm nào.")
                
    def calculate_total_price_of_stock(self):
        total_price_of_stock = 0
        for p in self.products:
            total_price_of_stock += p['price'] * p['quantity']
        print(f"\nTổng giá trị hàng tồn kho là {total_price_of_stock}")    
        
product1 = ProductManager()
product1.add_product("San pham 1", 2000, 3)
product1.add_product("San pham 2", 4000, 2)
product1.add_product("San pham 3", 5000, 1)
product1.add_product("San pham 4", 6000, 1)

product1.show_all_products()
product1.find_product_by_name("San pham 1")
product1.calculate_total_price_of_stock()