package co.first.pilling.user.service.map;

import java.util.List;

import co.first.pilling.user.service.UserVO;

public interface UserMapper {
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	int userInsert(UserVO vo); //회원가입
	int userDelete(UserVO vo); //회원탈퇴
	int userUpdate(UserVO vo); //회원수정
}
