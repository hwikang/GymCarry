package kr.goott.gymcarry.model.dao;

import java.util.List;

import kr.goott.gymcarry.model.dto.CommunityDTO;

public interface CommunityDAOInterface {
	//등록
	public void insertCommunity(CommunityDTO dto); 
	//다보기
	public List<CommunityDTO> comList();
	//해당 글 보기
	public CommunityDTO viewCommunity(int comNo) ;
}
