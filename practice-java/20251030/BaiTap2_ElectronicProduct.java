public class BaiTap2_ElectronicProduct extends BaiTap2_Product {
    String brand;
    int warranty_years;

    public BaiTap2_ElectronicProduct(String name, int price, String brand, int warranty_years) {
        super(name, price);
        this.brand = brand;
        this.warranty_years = warranty_years;
    }

    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Name: " + name + 
            ", Price: " + price + 
            ", Brand: " + brand +
            ", Warranty Years: " + warranty_years);
    }

}
