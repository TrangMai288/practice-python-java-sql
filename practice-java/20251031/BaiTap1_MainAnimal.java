import java.util.ArrayList;

public class BaiTap1_MainAnimal {
    public static void main(String[] args) {
        BaiTap1_Animal animal = new BaiTap1_Animal();
        BaiTap1_Dog dog = new BaiTap1_Dog();
        BaiTap1_Cat cat = new BaiTap1_Cat();

        animal.makeSound();
        dog.makeSound();
        cat.makeSound();

        ArrayList<BaiTap1_Animal> animals = new ArrayList<>();
        animals.add(new BaiTap1_Dog());
        animals.add(new BaiTap1_Cat());

        for (BaiTap1_Animal a : animals) {
            a.makeSound();
        }
    }    
}
