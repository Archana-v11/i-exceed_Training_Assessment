import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        ParkingLot parkingLot = new ParkingLot("PR123", 3, 8);
        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Park Vehicle");
            System.out.println("2. Unpark Vehicle");
            System.out.println("3. Show Available Slots");
            System.out.println("4. Exit");
            System.out.print("Choose an option: ");
            int choice = scanner.nextInt();
            scanner.nextLine();
            switch (choice) {
                case 1:
                    System.out.print("Enter vehicle type (Car/Bike/Truck): ");
                    String type = scanner.nextLine();
                    System.out.print("Enter registration number: ");
                    String reg = scanner.nextLine();
                    System.out.print("Enter color: ");
                    String color = scanner.nextLine();
                    Vehicle vehicle = new Vehicle(reg, color, type);
                    String ticket = parkingLot.parkVehicle(vehicle);
                    if (ticket != null) {
                        System.out.println("Vehicle parked successfully. Ticket: " + ticket);
                    } else {
                        System.out.println("No available slot for this vehicle type.");
                    }
                    break;
                case 2:
                    System.out.print("Enter your ticket: ");
                    String ticketNum = scanner.nextLine();
                    if (parkingLot.unparkVehicle(ticketNum)) {
                        System.out.println("Vehicle unparked successfully.");
                    } else {
                        System.out.println("Invalid ticket.");
                    }
                    break;
                case 3:
                    System.out.print("Enter vehicle type: ");
                    String vtype = scanner.nextLine();
                    parkingLot.displayAvailableSlots(vtype);
                    break;
                case 4:
                    System.out.println("Exiting...");
                    scanner.close();
                    return;
                default:
                    System.out.println("Invalid option.");
            }
        }
    }
}