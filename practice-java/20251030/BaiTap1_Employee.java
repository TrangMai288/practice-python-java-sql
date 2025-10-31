public class BaiTap1_Employee {
    String name;
    int salary;

    public BaiTap1_Employee(String name, int salary) {
        this.name = name;
        this.salary = salary;
    }

    public void showInfo() {
        System.out.println("Name: " + name + ", Salary: " + salary);
    }
}