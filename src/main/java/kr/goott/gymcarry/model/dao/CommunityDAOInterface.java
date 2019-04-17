package kr.goott.gymcarry.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.goott.gymcarry.model.dto.CommunityDTO;

public interface CommunityDAOInterface {
	//등록
	public void insertCommunity(CommunityDTO dto); 
	//다보기
	public List<CommunityDTO> comList();
	//해당 글 보기
	public CommunityDTO viewCommunity(int comNo) ;
	//글수정
	public CommunityDTO editCommunity(CommunityDTO dto) ;
	//글삭제
	public void deleteCommunity(int comNo);
	// view 수 들리기
	public void viewCount(int comNo);
	//reply 수늘리기
	public void replyCount(int comNo);
	//like 늘리기
	public void likeCount(int comNo);
	//reply빼기
	public void replyCountSub(int comNo);
	//like 빼기
	public void likeCountSub(int comNo);
	

	
	
	
}
