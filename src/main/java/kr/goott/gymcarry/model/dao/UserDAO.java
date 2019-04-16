package kr.goott.gymcarry.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import kr.goott.gymcarry.model.dto.UserDTO;

@Repository
public class UserDAO implements UserDAOInterface {

	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<UserDTO> userList() {
		logger.info("userlist called....");
		return sqlSession.selectList("user.userList");
	}

	@Override
	public void insertUser(UserDTO vo) {
		sqlSession.insert("user.insertUser",vo);

	}

	@Override
	public UserDTO viewUser(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(String userid) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUser(UserDTO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean checkPw(String userid, String userpwd) {
		// TODO Auto-generated method stub
		return false;
	}

}
