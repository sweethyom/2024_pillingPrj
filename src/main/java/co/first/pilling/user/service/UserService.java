package co.first.pilling.user.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface UserService {
	
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	public void userInsert(UserVO vo) throws DataAccessException;
	int userDelete(UserVO vo); //회원탈퇴
	int userUpdate(UserVO vo); //회원수정
	UserVO userPassword(UserVO vo); //마이페이지비밀번호확인
}
