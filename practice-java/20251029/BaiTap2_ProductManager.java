import java.util.ArrayList;

public class BaiTap2_ProductManager {
    public static void main(String[] args) {
        ArrayList<BaiTap2_FirstProduct> listProduct = new ArrayList<>();

        BaiTap2_FirstProduct product1 = new BaiTap2_FirstProduct("san pham 1", 1000, 3);
        BaiTap2_FirstProduct product2 = new BaiTap2_FirstProduct("san pham 2", 2000, 2);
        BaiTap2_FirstProduct product3 = new BaiTap2_FirstProduct("san pham 3", 3000, 1);

        listProduct.add(product1);
        listProduct.add(product2);
        listProduct.add(product3);

        for (BaiTap2_FirstProduct p : listProduct) {
            p.showInfo();
        }

        BaiTap2_ProductManager pd1 = new BaiTap2_ProductManager();
        int tong = pd1.tinh_tong_gia_tri_kho(listProduct);
        pd1.in_tong_gia_tri_kho(tong);
    }

    public int tinh_tong_gia_tri_kho(ArrayList<BaiTap2_FirstProduct> list) {
        int tong = 0;
        for (BaiTap2_FirstProduct p : list) {
            tong += p.getPrice() * p.getQuantity();
        }
        return tong; 
    }

    public void in_tong_gia_tri_kho(int n) {
        System.out.println("Tong gia tri kho: " + n);
    }
}
