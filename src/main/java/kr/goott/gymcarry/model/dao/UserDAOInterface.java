package kr.goott.gymcarry.model.dao;

import java.util.List;

import kr.goott.gymcarry.model.dto.UserDTO;

public interface UserDAOInterface {
	public List<UserDTO> userList(); //유저 리스트 정보
	public void insertUser(UserDTO dto); //유저 생성
	public UserDTO viewUser(String userid); //유저 검색
	public void deleteUser(String userid); //유저 삭제
	public void updateUser(UserDTO dto); //유저 수정
	public boolean checkPw(String userid, String userpwd); //로그인 여부 확인
	public UserDTO loginCheck(UserDTO dto);
	public UserDTO userInfo(String userid);
	public int addInfoUser(UserDTO dto);
	
}
