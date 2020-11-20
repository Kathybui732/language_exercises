import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please enter a positive integer between 0 and 1000000 to FizzBuzz!");
        System.out.print("Number:" );
        int number = scanner.nextInt();

        if (number % 3 == 0 && number % 5 == 0) {
            System.out.println("fizzbuzz");
        } else if (number % 5 == 0) {
            System.out.println("fizz");
        } else if (number % 3 == 0) {
            System.out.println("buzz");
        } else {
            System.out.println(number);
        }
    }
}
