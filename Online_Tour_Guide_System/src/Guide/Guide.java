package Guide;

public class Guide {
	private int id;
	private String name;
	private String nic;
	private String gender;
	private int age;
	private String language;
	private String telephone;
	private String hometown;
	private String email;
	private String username;
	private String password;
	
	
	public Guide(int id, String name, String nic, String gender, int age, String language,
			String telephone, String hometown, String email, String username, String password) {
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.gender = gender;
		this.age = age;
		this.language = language;
		this.telephone = telephone;
		this.hometown = hometown;
		this.email = email;
		this.username = username;
		this.password = password;
	}


	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}
	
	public String getGender() {
		return gender;
	}

	public int getAge() {
		return age;
	}

	public String getLanguage() {
		return language;
	}

	public String getTelephone() {
		return telephone;
	}

	public String getHometown() {
		return hometown;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}


	
	
	

}
