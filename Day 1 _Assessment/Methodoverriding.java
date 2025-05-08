class Animal {
    public void speak() {
        System.out.println("This is the Animal class");
    }
}

class Dog extends Animal {
    public void speak() {
        System.out.println("This is the Dog class");
    }
}

public class Methodoverriding {
    public static void main(String[] args) {
        Animal ref;
        Animal obj1 = new Animal();
        Dog obj2 = new Dog();
        
        ref = obj1; 
        ref.speak();
    }
}
