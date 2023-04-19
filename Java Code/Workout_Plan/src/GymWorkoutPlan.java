import java.util.Scanner;

public class GymWorkoutPlan {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.println("Enter the day of the week (1-7): ");
		int day = scanner.nextInt();

		String workoutPlan;
		switch (day) {
		case 1:
			workoutPlan = "Chest and Triceps";
			break;
		case 2:
			workoutPlan = "Back and Biceps";
			break;
		case 3:
			workoutPlan = "Legs and Shoulders";
			break;
		case 4:
			workoutPlan = "Cardio";
			break;
		case 5:
			workoutPlan = "Rest day";
			break;
		case 6:
			workoutPlan = "Full Body";
			break;
		case 7:
			workoutPlan = "Rest day";
			break;
		default:
			workoutPlan = "Invalid day";
			break;
		}

		System.out.println("Workout plan for day " + day + ": " + workoutPlan);
	}
}
