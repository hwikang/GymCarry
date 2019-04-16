package kr.goott.gymcarry.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.goott.gymcarry.model.dto.CommunityReplyDTO;

public interface CommunityReplyDAO {
	//댓글 작성
	@Insert("insert into communityreply values(comreplyseq.nextval,#{userid},#{replyDes},sysdate,#{comNo})")
	public void insertReply(@Param("userid") String userid, @Param("replyDes") String replyDes ,@Param("comNo") int comNo);
	
	//댓글보기
	@Select("select * from communityreply where comno=#{comNo} order by replyno desc")
	public List<CommunityReplyDTO> viewReply(@Param("comNo") int comNo);
	
	//수정
	@Update("update communityreply set replydes=#{replyDes} where replyno=#{replyNo}")
	public void editReply(@Param("replyDes") String replyDes, @Param("replyNo") int replyNo);
	//삭제
	@Delete("delete from communityreply where replyno=#{replyNo}")
	public void deleteReply(@Param("replyNo") int replyNo);
	
}
