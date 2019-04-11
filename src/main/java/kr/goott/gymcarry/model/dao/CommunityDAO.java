package kr.goott.gymcarry.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import kr.goott.gymcarry.model.dto.CommunityDTO;

@Repository
public class CommunityDAO implements CommunityDAOInterface {

	private static final Logger logger = LoggerFactory.getLogger(CommunityDAO.class);
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void insertCommunity(CommunityDTO dto) {
		logger.info("insert community called...");
		logger.info("dao에서 dto userid"+dto.getUserid());
		sqlSession.insert("community.insertCommunity" , dto);  //dto 불러온거를 sqlsessiond을 통해 때려받는다
	}

	@Override
	public List<CommunityDTO> comList() {
		logger.info("community list called...");
		return sqlSession.selectList("community.viewCommunity");
		
	}

}
