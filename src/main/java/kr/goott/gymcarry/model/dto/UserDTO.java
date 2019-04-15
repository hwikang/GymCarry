package kr.goott.gymcarry.model.dto;

public class UserDTO {
	private int userno;
	private String userid;
	private String userpwd;
	private String username;
	private String userimage;
	private int protein;
	private String naverLogStatus = "N";
	private String naverid;
	private String navername;
	private String regdate;
	
	public UserDTO() {}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserimage() {
		return userimage;
	}
	public void setUserimage(String userimage) {
		this.userimage = userimage;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public String getNaverLogStatus() {
		return naverLogStatus;
	}
	public void setNaverLogStatus(String naverLogStatus) {
		this.naverLogStatus = naverLogStatus;
	}
	
	public String getNaverid() {
		return naverid;
	}
	public void setNaverid(String naverid) {
		this.naverid = naverid;
	}
	public String getNavername() {
		return navername;
	}
	public void setNavername(String navername) {
		this.navername = navername;
	}
	@Override
	public String toString() {
		return "UserDTO [userid="+userid+"username="+username;
		
	}
}
