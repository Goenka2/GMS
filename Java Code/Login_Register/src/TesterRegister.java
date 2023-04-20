import java.util.Scanner;

public class TesterRegister {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		// home page display
		System.out.println("Welcome to FitnessClub");

		System.out.println("------Register Here------");

		System.out.println("Fill Below Form ");
		System.out.println("First Name");
		System.out.println("Last Name");
		System.out.println("Mobile Number");
		System.out.println("Email");
		System.out.println("Age ");
		System.out.println("Weight");
		System.out.println("Gender");

		Register re = new Register(sc.next(), sc.next(), sc.next(), sc.next(), sc.nextInt(), sc.nextFloat(), sc.next());
		System.out.println(re.toString());

	}

}
