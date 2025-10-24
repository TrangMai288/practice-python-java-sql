class Student:
    def __init__(self, name, age, major):
        self.name = name
        self.age = age
        self.major = major
        
    def show_info(self):
        print(f"Ten: {self.name}, Tuoi: {self.age}, Nghe nghiep: {self.major}")
        
sv1 = Student("Trang", 26, "Tester")
sv2 = Student("Nguyen Van A", 19, "Developer")

sv1.show_info()
sv2.show_info()