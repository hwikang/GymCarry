package kr.goott.gymcarry.model.dto;

import java.util.Date;

public class CommunityReplyDTO {
	private int replyNo;
	private String userid;
	private String replyDes;
	private Date regdate;
	private int comNo;
	private String userimage;

	

	@Override
	public String toString() {
		return "CommunityReplyDTO [replyNo=" + replyNo + ", userid=" + userid + ", replyDes=" + replyDes + ", regdate="
				+ regdate + ", comNo=" + comNo + ", userimage=" + userimage + "]";
	}
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getReplyDes() {
		return replyDes;
	}
	public void setReplyDes(String replyDes) {
		this.replyDes = replyDes;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
	}
	public String getUserimage() {
		return userimage;
	}
	public void setUserimage(String userimage) {
		this.userimage = userimage;
	}
	
	
	
	
}
