public class BaiTap2_Product {
    String name;
    int price;

    public BaiTap2_Product(String name, int price) {
        this.name = name;
        this.price = price;
    }

    public void showInfo() {
        System.out.println("Name: " + name + ", Price: " + price);
    }
}