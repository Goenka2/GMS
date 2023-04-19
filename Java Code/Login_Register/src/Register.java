
public class Register {

	String firstname;
	String lastname;
	String mobileno;
	String email;
	String gender;
	int age;
	float weight;

	public Register(String fn, String ln, String mob, String mail, int ag, float w, String i) {

		this.firstname = fn;
		this.lastname = ln;
		this.mobileno = mob;
		this.email = mail;
		this.age = ag;
		this.weight = w;
		this.gender = i;

	}

	public String toString() {

		return "User Name : " + this.firstname + " " + this.lastname + "\n" + "Mobile no :" + this.mobileno + "\n"
				+ "Email : " + this.email + "\n" + "Age :" + this.age + "\n" + "Weight :" + this.weight + "\n"
				+ "Gender :" + this.gender;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

}
