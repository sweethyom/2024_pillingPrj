package co.first.pilling.user.service;

import java.util.List;

public interface UserService {
	
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	//int userInsert(UserVO vo); //회원가입
	int userDelete(UserVO vo); //회원탈퇴
	int userUpdate(UserVO vo); //회원수정
	public void userInsert(UserVO vo) throws Exception;
}
