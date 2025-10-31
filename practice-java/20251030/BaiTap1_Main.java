/*
🧩 Đề bài: “Kế thừa và dùng super()”
Giả sử bạn có hệ thống quản lý nhân sự đơn giản:
1. Class cha: Employee
Thuộc tính: name, salary
Phương thức:
show_info() → in ra: "Name: <name>, Salary: <salary>"
2. Class con: Manager (kế thừa Employee)
Thuộc tính mới: department
Ghi đè phương thức show_info(), nhưng vẫn gọi super() để in thông tin của Employee trước.
Sau đó in thêm: "Department: <department>"
3. Trong hàm main:
Tạo 1 đối tượng Employee
Tạo 1 đối tượng Manager
Gọi show_info() cho cả hai đối tượng
 */

public class BaiTap1_Main {
    public static void main(String[] args) {
        BaiTap1_Employee e1 = new BaiTap1_Employee("employee1", 2000);
        BaiTap1_Manager m1 = new BaiTap1_Manager("manager1", 6000, "department 1");
    
        e1.showInfo();
        m1.showInfo();
    }
}
