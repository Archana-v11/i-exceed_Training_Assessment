class Device {
    public void ring() {
        System.out.println("Generic device ringing");
    }
}

class SmartDevice extends Device {
    @Override
    public void ring() {
         System.out.println("Smart device ringing");
    }

    public void features() {
        System.out.println("Wi-Fi Enabled");
    }
}

public class Upcasting {
    public static void main(String[] args) {
        SmartDevice sd = new SmartDevice();
        Device d = (Device) sd;  
        d.ring();                
        sd.features();           
    }
}
