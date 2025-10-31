/*
🎯 Đề bài – Bài tập kế thừa tổng hợp
🧩 Mô tả:
Tạo hai lớp:
1. Product (lớp cha)
- Thuộc tính:
    + name (tên sản phẩm)
    + price (giá)
- Phương thức:
    + show_info() → hiển thị thông tin sản phẩm.
2. ElectronicProduct (lớp con kế thừa từ Product)
- Thuộc tính bổ sung:
    + brand (hãng sản xuất)
    + warranty_years (số năm bảo hành)
- Ghi đè phương thức show_info() để hiển thị đầy đủ thông tin gồm:
name, price, brand, warranty_years.
3. Hàm main (hoặc phần chạy chương trình)
- Tạo 1 đối tượng Product và 2 đối tượng ElectronicProduct.
- Gọi show_info() cho từng đối tượng.
 */

public class BaiTap2_Main {
    public static void main(String[] args) {
        BaiTap2_Product product1 = new BaiTap2_Product("san pham 1", 10000);
        BaiTap2_ElectronicProduct electronicProduct1 = new BaiTap2_ElectronicProduct("san pham electronic 1", 1000, "Samsung", 1);
        BaiTap2_ElectronicProduct electronicProduct2 = new BaiTap2_ElectronicProduct("san pham electronic 2", 2000, "LG", 2);
    
        product1.showInfo();
        electronicProduct1.showInfo();
        electronicProduct2.showInfo();
    }
}
