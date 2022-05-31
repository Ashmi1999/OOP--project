package C.customer;

public class customer {
	private int id;
	private String username;
    private String password;
    private String name;
    private String adress;
    private String phone;
    private String email;
    
    public customer(int id, String username, String password, String name, String adress, String phone, String email) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.adress = adress;
		this.phone = phone;
		this.email = email;
}
   
    public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getAdress() {
		return adress;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	
    
}