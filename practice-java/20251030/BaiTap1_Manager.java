public class BaiTap1_Manager extends BaiTap1_Employee {
    String department;

    public BaiTap1_Manager(String name, int salary, String department) {
        super(name, salary);
        this.department = department;
    }
    
    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Department: " + department);
    }
}
