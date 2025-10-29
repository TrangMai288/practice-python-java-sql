class Product:
    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity
        
    def show_info(self):
        print(f"Name: {self.name}, Price: {self.price}, Quantity: {self.quantity}")
        
class ProductManager:
    def tinh_tong_gia_tri_kho(self, lst):  
        tong = 0  
        for p in lst:
            tong += p.price * p.quantity
        return tong
    
    def in_tong_gia_tri_kho(self, n):
        print(f"Tong gia tri kho: {n}")
        
if __name__ == "__main__":
    product_list = [
        Product("san pham 1", 1000, 3),
        Product("san pham 2", 1000, 2),
        Product("san pham 3", 1000, 1)
    ]
    
    pm = ProductManager()
    
    for p in product_list:
        p.show_info()
    
    tong_gia_tri_kho = pm.tinh_tong_gia_tri_kho(product_list)
    pm.in_tong_gia_tri_kho(tong_gia_tri_kho)