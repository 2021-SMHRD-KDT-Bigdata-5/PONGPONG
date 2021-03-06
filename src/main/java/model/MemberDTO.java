package model;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String university;
	private String gender;
	private String tel;
	private String birth;
	private String address;
	
	public MemberDTO(String id, String pw, String name, String university, String gender, String tel, String birth, String address) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.university = university;
		this.gender = gender;
		this.tel = tel;
		this.birth = birth;
		this.address = address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}	
	
}
