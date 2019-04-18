package kr.goott.gymcarry.model.dto;

import java.util.Date;

public class UserDTO {
	private int userno;
	private String userid;
	private String userpwd;
	private String username;
	private String useremail;
	private String userphone;
	private String presentid;
	private String userimage;
	private int protein;
	private String birthYear;
	private String birthMonth;
	private String birthDay;	
	private String birthDate;
	private String gender;
	private int userheight;
	private int userweight;
	private String purposeExe; // 운동 목적
	private String stateExe; // 평소 운동량
	private String goalExe; // 목표 체중
	private Date regdate;
	private Date modifyDate;
	private String naverid;//네이버로 로그인 할 시 아이디
	
	public UserDTO() {}

	
	public String getNaverid() {
		return naverid;
	}
	public void setNaverid(String naverid) {
		this.naverid = naverid;
	}
	public String getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
		setBirthDate(birthYear,this.birthMonth,this.birthDay);
	}
	public String getBirthMonth() {
		return birthMonth;
	}
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
		setBirthDate(this.birthYear,birthMonth,this.birthDay);
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
		setBirthDate(this.birthYear,this.birthMonth,birthDay);
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthYear, String birthMonth, String birthDay) {
		this.birthDate = birthYear+birthMonth+birthDay;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getUserheight() {
		return userheight;
	}
	public void setUserheight(int userheight) {
		this.userheight = userheight;
	}
	public int getUserweight() {
		return userweight;
	}
	public void setUserweight(int userweight) {
		this.userweight = userweight;
	}
	public String getPurposeExe() {
		return purposeExe;
	}
	public void setPurposeExe(String purposeExe) {
		this.purposeExe = purposeExe;
	}
	public String getStateExe() {
		return stateExe;
	}
	public void setStateExe(String stateExe) {
		this.stateExe = stateExe;
	}
	public String getGoalExe() {
		return goalExe;
	}
	public void setGoalExe(String goalExe) {
		this.goalExe = goalExe;
	}
/* ~ 추가 회원 정보 기입 DTO */
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getPresentid() {
		return presentid;
	}
	public void setPresentid(String presentid) {
		this.presentid = presentid;
	}
		
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}


	@Override
	public String toString() {
		return "UserDTO [userno=" + userno + ", userid=" + userid + ", userpwd=" + userpwd + ", username=" + username
				+ ", useremail=" + useremail + ", userphone=" + userphone + ", presentid=" + presentid + ", userimage="
				+ userimage + ", protein=" + protein + ", birthYear=" + birthYear + ", birthMonth=" + birthMonth
				+ ", birthDay=" + birthDay + ", birthDate=" + birthDate + ", gender=" + gender + ", userheight="
				+ userheight + ", userweight=" + userweight + ", purposeExe=" + purposeExe + ", stateExe=" + stateExe
				+ ", goalExe=" + goalExe + ", regdate=" + regdate + ", modifyDate=" + modifyDate + ", naverid="
				+ naverid + "]";
	}

	
	
}
