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
	//�ۼ���
	public CommunityDTO editCommunity(CommunityDTO dto) ;
	//�ۻ���
	public void deleteCommunity(int comNo);
	
}
