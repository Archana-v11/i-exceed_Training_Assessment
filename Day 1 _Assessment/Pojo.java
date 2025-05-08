class location {
    int houseNo, zipCode;
    String roadName, town;

    location(int houseNo, String roadName, String town, int zipCode) {
        this.houseNo = houseNo;
        this.roadName = roadName;
        this.town = town;
        this.zipCode = zipCode;
    }

    public void showLocation() {
        System.out.println("House No: " + houseNo);
        System.out.println("Road Name: " + roadName);
        System.out.println("Town: " + town);
        System.out.println("Zip Code: " + zipCode);
    }
}

class person {
    String fullName;
    int yearsOld;
    location loc;

    Person(String fullName, int yearsOld, location loc) {
        this.fullName = fullName;
        this.yearsOld = yearsOld;
        this.loc = loc;
    }

    public void showPersonDetails() {
        loc.showLocation();
        System.out.println("Name: " + fullName);
        System.out.println("Age: " + yearsOld);
    }
}

public class Pojo {
    public static void main(String args[]) {
        Location loc = new Location(105, "Green Avenue", "Chennai", 600001);
        Person p = new Person("Kavin", 22, loc);
        p.showPersonDetails();
    }
}
