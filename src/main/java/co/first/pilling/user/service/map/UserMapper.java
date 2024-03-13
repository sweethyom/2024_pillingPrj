package co.first.pilling.user.service.map;

import java.util.List;

import org.springframework.dao.DataAccessException;

import co.first.pilling.user.service.UserVO;

public interface UserMapper {
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	UserVO userRead(String id);
//	int userInsert(UserVO vo); //회원가입
	public void userInsert(UserVO vo) throws DataAccessException;
	int userDelete(UserVO vo); 
	int userWithdraw(UserVO vo);
	int userWithdrawinsert(UserVO vo);
	int userPswdUpdate(UserVO vo);//회원연락처수정
	int userUpdate(UserVO vo); //회원수정
	UserVO userPassword(UserVO vo);
}
