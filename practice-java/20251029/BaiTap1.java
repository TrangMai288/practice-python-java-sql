public class BaiTap1 {
    public static void main(String[] args){
        String name = "Trang";
        int age = 25;
        double salary = 1500.5;

        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Salary: " + salary);
        
        if (age >= 18) {
            System.out.println("Trạng thái: Người lớn");
        } else {
            System.out.println("Trạng thái: Trẻ em");
        }

        for (int i = 0; i < 5; i++) {
            System.out.println("Xin chào Java!");
        }
    }
}