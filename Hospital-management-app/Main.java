import java.util.Scanner;

public class HospitalManagementApp {
    private static HospitalDatabase database;

    public static void main(String[] args) {
        database = new HospitalDatabase();
        // Implement a menu-driven interface to interact with the system
        Scanner scanner = new Scanner(System.in);
        int choice;
        do {
            System.out.println("1. Add a new patient");
            System.out.println("2. Add a new doctor");
            System.out.println("3. Schedule an appointment");
            System.out.println("4. View appointments");
            System.out.println("0. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();
            
            switch (choice) {
                // Handle user choices and interact with the database
                // For example: addPatient(), addDoctor(), scheduleAppointment(), viewAppointments(), etc.
            }
        } while (choice != 0);

        // Close resources and exit
        scanner.close();
        database.closeConnection();
    }
}
