package co.first.pilling.user.service.Impl;

import java.util.List;

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
	public 	int userWithdraw(UserVO vo) {
		return map.userWithdraw(vo);
	}
	
	public int userWithdrawinsert(UserVO vo) {
		return map.userWithdrawinsert(vo);
	}
	
	@Override
	public int userTelUpdate(UserVO vo){
		return map.userTelUpdate(vo);
	}
	
	@Override
	public int userEmailUpdate(UserVO vo){
		return map.userEmailUpdate(vo);
	}
	
	@Override
	public int userAddrUpdate(UserVO vo) {
		return map.userAddrUpdate(vo);
	}
	
	@Override
	public int userMkUpdate(UserVO vo) {
		return map.userMkUpdate(vo);
	}
	
	@Override
	public int userUpdate(UserVO vo) {
		return map.userUpdate(vo);
	}
	
	@Override
	public UserVO userPassword(UserVO vo) {
		return map.userPassword(vo);
	}
}
