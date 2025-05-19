import java.util.*;

public class ParkingLot {
    private String id;
    private List<List<ParkingSlot>> floors;

    public ParkingLot(String id, int floorCount, int slotsPerFloor) {
        this.id = id;
        this.floors = new ArrayList<>();
        for (int i = 0; i < floorCount; i++) {
            List<ParkingSlot> floorSlots = new ArrayList<>();
            for (int j = 0; j < slotsPerFloor; j++) {
                String type = (j == 0) ? "Truck" : (j <= 2) ? "Bike" : "Car";
                floorSlots.add(new ParkingSlot(i + 1, j + 1, type));
            }
            floors.add(floorSlots);
        }
    }

    public String parkVehicle(Vehicle vehicle) {
        for (List<ParkingSlot> floor : floors) {
            for (ParkingSlot slot : floor) {
                if (slot.getType().equalsIgnoreCase(vehicle.getType()) && slot.isAvailable()) {
                    slot.assignVehicle(vehicle);
                    return id + "_" + slot.getFloor() + "_" + slot.getNumber();
                }
            }
        }
        return null;
    }

    public boolean unparkVehicle(String ticket) {
        String[] parts = ticket.split("_");
        if (parts.length != 3) return false;
        int floorNum = Integer.parseInt(parts[1]) - 1;
        int slotNum = Integer.parseInt(parts[2]) - 1;
        if (floorNum < 0 || floorNum >= floors.size()) return false;
        List<ParkingSlot> floor = floors.get(floorNum);
        if (slotNum < 0 || slotNum >= floor.size()) return false;
        ParkingSlot slot = floor.get(slotNum);
        if (!slot.isAvailable()) {
            slot.removeVehicle();
            return true;
        }
        return false;
    }

    public void displayAvailableSlots(String type) {
        for (int i = 0; i < floors.size(); i++) {
            System.out.print("Floor " + (i + 1) + ": ");
            for (ParkingSlot slot : floors.get(i)) {
                if (slot.getType().equalsIgnoreCase(type) && slot.isAvailable()) {
                    System.out.print(slot.getNumber() + " ");
                }
            }
            System.out.println();
        }
    }
}