package co.first.pilling.user.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
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
		// TODO Auto-generated method stub
		return map.userSelectList();
	}

	@Override
	public UserVO userSelect(UserVO vo) {
		// TODO Auto-generated method stub
		return map.userSelect(vo);
	}
	
	@Override
	public void userInsert(UserVO vo) throws Exception{
		map.userInsert(vo);
	}
	
	@Override
	public int userDelete(UserVO vo) {
		// TODO Auto-generated method stub
		return map.userDelete(vo);
	}

	@Override
	public int userUpdate(UserVO vo) {
		// TODO Auto-generated method stub
		return map.userUpdate(vo);
	}


}
