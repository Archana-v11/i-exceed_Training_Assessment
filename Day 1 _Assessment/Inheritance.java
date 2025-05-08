class Person {
    String fullName, city;
    int years;

    Person() {
        this("Ravi", 30, "Madurai");
    }

    Person(String fullName, int years, String city) {
        this.fullName = fullName;
        this.years = years;
        this.city = city;
    }

    public void showPersonDetails() {
        System.out.println("Full Name: " + fullName);
        System.out.println("Age: " + years);
        System.out.println("City: " + city);
    }
}

class Worker extends Person {
    int income;
    String role;

    Worker(String fullName, int years, String city, int income, String role) {
        super(fullName, years, city); 
        this.income = income;
        this.role = role;
    }

    public void showWorkerDetails() {
        System.out.println("Income: " + income);
        System.out.println("Role: " + role);
    }
}

class Inheritance {
    public static void main(String args[]) {
        Person p = new Person("Karthik", 28, "Chennai");
        p.showPersonDetails();

        Worker w = new Worker("Karthik", 28, "Chennai", 45000, "System Analyst");
        w.showWorkerDetails();
    }
}
