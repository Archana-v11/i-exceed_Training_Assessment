interface A {
    void methodA();
}

interface B {
    void methodB();
}

class multipleinheritance implements A, B {
    @Override
    public void methodA() {
        System.out.println("Implementation of methodA");
    }

    @Override
    public void methodB() {
        System.out.println("Implementation of methodB");
    }

    public static void main(String[] args) {
        MyClass obj = new MyClass();
        obj.methodA(); 
        obj.methodB(); 
    }
}