public class ParkingSlot {
    private int floor;
    private int number;
    private String type;
    private Vehicle vehicle;

    public ParkingSlot(int floor, int number, String type) {
        this.floor = floor;
        this.number = number;
        this.type = type;
        this.vehicle = null;
    }

    public boolean isAvailable() {
        return vehicle == null;
    }

    public void assignVehicle(Vehicle v) {
        this.vehicle = v;
    }

    public void removeVehicle() {
        this.vehicle = null;
    }

    public String getType() {
        return type;
    }

    public int getFloor() {
        return floor;
    }

    public int getNumber() {
        return number;
    }
}