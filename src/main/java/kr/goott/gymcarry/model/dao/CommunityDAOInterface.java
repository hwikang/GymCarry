package kr.goott.gymcarry.model.dao;

import java.util.List;

import kr.goott.gymcarry.model.dto.CommunityDTO;

public interface CommunityDAOInterface {
	//���
	public void insertCommunity(CommunityDTO dto); 
	//�ٺ���
	public List<CommunityDTO> comList();
	//�ش� �� ����
	public CommunityDTO viewCommunity(int comNo) ;
}
