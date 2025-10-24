class StudentManager:
    def __init__(self):
        self.students = []

    def add_student(self, name, age, major):
        self.students.append({"name": name, "age": age, "major": major})
        
    def show_all(self):
        print("Hien thi tat ca sinh vien:")
        for s in self.students:
            print(s)

    def find_by_major(self, major):
        print(f"Loc sinh vien theo nganh '{major}':")
        for s in self.students:
            if s['major'] == major:
                print(s)
                
sv1 = StudentManager()
sv1.add_student("A", 25, "Tester")
sv1.add_student("B", 30, "Developer")
sv1.add_student("C", 27, "Tester")

sv1.show_all()
sv1.find_by_major("Tester")