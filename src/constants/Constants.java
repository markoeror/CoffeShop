package constants;

public enum Constants {
	USER(1),ADMIN(0),CREATE_USER_SUCCESSFUL(3),CREATE_USER_FAILED(4);
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private Constants(int id) {
		this.id = id;
	}
}
