class X {
    String personName = "Kavin";

    X() {
        System.out.println(personName);
    }

    X(int a, int b) {
        this(); // Calls default constructor
        System.out.println(a + b);
    }
}

class Y extends X {
    Y() {
        super(15, 25); 
        System.out.println("This is the subclass constructor");
    }
}

class DemoInheritance {
    public static void main(String args[]) {
        new Y();
    }
}
