class Animal
{
    Animal()
    {
        System.out.println("Animal constructor called");
    }
}

class Dog extends Animal
{
    String breed = "Labrador";
    int age = 5;
    String color = "Golden";

    Dog()
    {
        super();
        System.out.println("Breed: " + breed + ", Age: " + age + ", Color: " + color);
    }
}

class PetShop extends Dog
{
    String shopName = "Happy Paws";

    PetShop()
    {
        System.out.println("Pet Shop Name: " + shopName);
    }
}

class SuperCallConstructor
{
    public static void main(String args[])
    {
        PetShop pet = new PetShop();
    }
}
