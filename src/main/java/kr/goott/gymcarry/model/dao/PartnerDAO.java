package kr.goott.gymcarry.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.goott.gymcarry.model.dto.UserDTO;

public interface PartnerDAO {
	//ȸ�� ������������
	@Select("select * from usertbl")
	public List<UserDTO> getAllUser();
}
