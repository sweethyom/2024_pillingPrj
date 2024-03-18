package co.first.pilling.user.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;
import co.first.pilling.user.service.map.UserMapper;

@Service
@Primary
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper map;
	
	@Override
	public List<UserVO> userSelectList() {
		return map.userSelectList();
	}

	@Override
	public UserVO userSelect(UserVO vo) {
		return map.userSelect(vo);
	}
	
	@Override
	public UserVO userRead(String id){
		UserVO vo = null;
		try {
			vo = map.userRead(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	@Override
	public void userInsert(UserVO vo) throws DataAccessException{
		map.userInsert(vo);
	}
	
	@Override
	public int userDelete(UserVO vo) {
		return map.userDelete(vo);
	}

	@Override
	public int userWithdraw(UserVO vo) {
		return map.userWithdraw(vo);
	}
	
	public int userWithdrawinsert(UserVO vo) {
		return map.userWithdrawinsert(vo);
	}

	@Override
	public int userPswdUpdate(UserVO vo) {
		return map.userPswdUpdate(vo);
	}
	
	@Override
	public int userUpdate(UserVO vo) {
		return map.userUpdate(vo);
	}
	
	@Override
	public UserVO userPassword(UserVO vo) {
		return map.userPassword(vo);
	}

	@Override
	public String selectUserRank(UserVO vo) {
		// TODO Auto-generated method stub
		return map.selectUserRank(vo);
	}

	@Override
	public int updateUserPoint(Map<Integer, UserVO> pointMap) {
		// TODO Auto-generated method stub
		return map.updateUserPoint(pointMap);
	}
}
