package test;

// VO 와 DAO가 합쳐짐
public class LoginBean {
	private String id;
	private String pw;
	private boolean result;

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

	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public void login() {

		if (this.id == null || this.pw == null) {
			return;
		}

		else if ((this.id.equals("admin")) && (this.pw.equals("1234"))) {
			this.result = true;
		} else {
			this.result = false;
		}
	}
}
