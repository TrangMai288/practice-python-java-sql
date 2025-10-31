'''
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
'''

class Employee:
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary
        
    def show_info(self):
        print(f"\nName: {self.name}, Salary: {self.salary}")
        
class Manager(Employee):
    def __init__(self, name, salary, department):
        super().__init__(name, salary)
        self.department = department
        
    def show_info(self):
        super().show_info()
        print(f"Department: {self.department}")
        
if __name__ == "__main__":
    e1 = Employee("employee1", 2000)
    m1 = Manager("manager1", 5000, "department 1")
    
    e1.show_info()
    m1.show_info()