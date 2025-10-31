class Animal:
    def make_sound(self):
        print("Animal sound")
        
class Dog(Animal):
    def make_sound(self):
        print("Woof!")
        
class Cat(Animal):
    def make_sound(self):
        print("Meow!")
        
dog = Dog()
cat = Cat()

dog.make_sound()
cat.make_sound()

print()
# da hinh
animals = [Dog(), Cat()]
for a in animals:
    a.make_sound()